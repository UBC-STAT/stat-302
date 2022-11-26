import subprocess
import json

def generate(data):
    sp = subprocess.Popen("Rscript " + data["options"]["question_path"]+ "/rscript.r", 
                shell=True,
                text=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE)
    rc = sp.wait()
    
    data_dict = json.loads(str(sp.communicate()[0]))
    params_dict = data_dict['params']
    correct_answers_dict = data_dict['correct_answers']
    
    for key in params_dict.keys(): 
        data['params'][key] = params_dict[key]
        
    for key in correct_answers_dict.keys(): 
        data['correct_answers'][key] = correct_answers_dict[key]
