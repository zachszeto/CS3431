# CS 3431
# Sample code to insert date into a PostgreSQl database
# Sakire Arslan Ay

#-------------------------------
# Instructions:
#-------------------------------
#1. Install psycopg2 using pip installer :  
#       Windows:  pip install psycopg2  
#       Mac (or Linux) :  pip3 install psycopg2
#   This code uses the psycopg2 library to connect to the PostgreSQL database and execute queries. 
# For more information on how to to use the psycopg2 library please see https://www.psycopg.org/docs/usage.html#query-parameters 

# 2. Make sure to check the "TODO" comments in the code and make the required edits before you run the code. 

import json
import psycopg2

"""cleanStr4SQL function removes the "single quote" or "back quote" characters from strings. """
def cleanStr4SQL(s):
    return s.replace("'","`").replace("\n"," ")

def insert2BusinessTable():
    #reading the JSON file
    with open('phase2\yelp_business.JSON','r') as f:    #TODO: update path for the input file
        line = f.readline()
        count_line = 0

        #connect to yelpdb database on postgres server using psycopg2
        try:
            #TODO: update the database name, username, and password
            conn = psycopg2.connect("dbname='phase2' user='zdszeto' host='localhost' password='22005PineHill!'")
        except:
            print('Unable to connect to the database!')
        cur = conn.cursor()

        while line:
            data = json.loads(line)
            #print(data)
            # Generate the INSERT statement for the current business
            # TODO: The below INSERT statement is based on a simple (and incomplete) businesstable schema. Update the statement based on your own table schema and
            # include values for all businessTable attributes
            
            #Business
            try:
                cur.execute("INSERT INTO Business (business_id, name, star_rating, street_address, city, zipcode, state, num_tips, is_open, latitude, longitude)"
                       + " VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s) ", 
                         (data['business_id'],cleanStr4SQL(data["name"]), data["stars"], cleanStr4SQL(data["address"]), data["city"], data["postal_code"], data["state"], 0, data["is_open"], data["latitude"], data["longitude"] ) )              
            except Exception as e:
                print("Insert to business failed!",e)
            
            
            conn.commit()
            line = f.readline()
            count_line +=1

        cur.close()
        conn.close()

    print(count_line)
    #outfile.close()  #uncomment this line if you are writing the INSERT statements to an output file.
    f.close()

def insert2UsersTable():
    #reading the JSON file
    with open('phase2\yelp_user.JSON','r') as f:    #TODO: update path for the input file
        line = f.readline()
        count_line = 0

        #connect to yelpdb database on postgres server using psycopg2
        try:
            #TODO: update the database name, username, and password
            conn = psycopg2.connect("dbname='phase2' user='zdszeto' host='localhost' password='22005PineHill!'")
        except:
            print('Unable to connect to the database!')
        cur = conn.cursor()

        while line:
            data = json.loads(line)
            #print(data)
            # Generate the INSERT statement for the current business
            # TODO: The below INSERT statement is based on a simple (and incomplete) businesstable schema. Update the statement based on your own table schema and
            # include values for all businessTable attributes
            

            #User
            try:
                cur.execute("INSERT INTO Users (average_stars, cool_score, num_fans, funny_score, name, tip_count, useful_score, user_id, yelping_since)"
                    + " VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) ", 
                    (data['average_stars'], data["cool"], data["fans"], data["funny"], cleanStr4SQL(data["name"]), data["tipcount"], data["useful"], cleanStr4SQL(data["user_id"]), data["yelping_since"] ) )              
            
            except Exception as e:
                print("Insert to user failed!",e)
            
            conn.commit()
            line = f.readline()
            count_line +=1

        cur.close()
        conn.close()

    print(count_line)
    #outfile.close()  #uncomment this line if you are writing the INSERT statements to an output file.
    f.close()

def insert2TipsTable():
    #reading the JSON file
    with open('phase2\yelp_tip.JSON','r') as f:    #TODO: update path for the input file
        line = f.readline()
        count_line = 0

        #connect to yelpdb database on postgres server using psycopg2
        try:
            #TODO: update the database name, username, and password
            conn = psycopg2.connect("dbname='phase2' user='zdszeto' host='localhost' password='22005PineHill!'")
        except:
            print('Unable to connect to the database!')
        cur = conn.cursor()

        while line:
            data = json.loads(line)
            #print(data)
            # Generate the INSERT statement for the current business
            # TODO: The below INSERT statement is based on a simple (and incomplete) businesstable schema. Update the statement based on your own table schema and
            # include values for all businessTable attributes
            
           
            #Tips
            try:
                cur.execute("INSERT INTO Tips (business_id, tipdate, likes, tip_text, user_id)"
                    + " VALUES (%s, %s, %s, %s, %s) ", 
                    (cleanStr4SQL(data['business_id']), data["date"], data["likes"], cleanStr4SQL(data["text"]), cleanStr4SQL(data["user_id"]) ) )              
            
            except Exception as e:
                print("Insert to Tips failed!",e)
            
            conn.commit()
            line = f.readline()
            count_line +=1

        cur.close()
        conn.close()

    print(count_line)
    #outfile.close()  #uncomment this line if you are writing the INSERT statements to an output file.
    f.close()


def insert2FriendsTable():
    #reading the JSON file
    with open('phase2\yelp_user.JSON','r') as f:    #TODO: update path for the input file
        line = f.readline()
        count_line = 0

        #connect to yelpdb database on postgres server using psycopg2
        try:
            #TODO: update the database name, username, and password
            conn = psycopg2.connect("dbname='phase2' user='zdszeto' host='localhost' password='22005PineHill!'")
        except:
            print('Unable to connect to the database!')
        cur = conn.cursor()

        while line:
            data = json.loads(line)
            #print(data)
            # Generate the INSERT statement for the current business
            # TODO: The below INSERT statement is based on a simple (and incomplete) businesstable schema. Update the statement based on your own table schema and
            # include values for all businessTable attributes
        

            #BA
            for friend_id in data['friends']:
                try:
                    cur.execute("INSERT INTO FRIENDS (user_id, friend_id)"
                    " VALUES (%s, %s)",
                    (cleanStr4SQL(data['user_id']), cleanStr4SQL(friend_id)))             
            
                except Exception as e:
                    print("Insert to Friends failed!",e)
                count_line +=1
            
            conn.commit()
            line = f.readline()
            

        cur.close()
        conn.close()

    print(count_line)
    #outfile.close()  #uncomment this line if you are writing the INSERT statements to an output file.
    f.close()

def get_attributes(attributes):
    L = []
    for (attribute, value) in list(attributes.items()):
        if isinstance(value, dict):
            L += get_attributes(value)
        else:
            L.append((attribute, value))
    return L

def insert2BATable():
    #reading the JSON file
    with open('phase2\yelp_business.JSON','r') as f:    #TODO: update path for the input file
        line = f.readline()
        count_line = 0

        #connect to yelpdb database on postgres server using psycopg2
        try:
            #TODO: update the database name, username, and password
            conn = psycopg2.connect("dbname='phase2' user='zdszeto' host='localhost' password='22005PineHill!'")
        except:
            print('Unable to connect to the database!')
        cur = conn.cursor()

        while line:
            data = json.loads(line)
            #print(data)
            # Generate the INSERT statement for the current business
            # TODO: The below INSERT statement is based on a simple (and incomplete) businesstable schema. Update the statement based on your own table schema and
            # include values for all businessTable attributes
        

            #BA
            for attribute_name, value in data['attributes'].items():
                try:
                    # Get list of attribute tuples
                    attributes_list = get_attributes({attribute_name: value})
                    
                    for attribute in attributes_list:
                        key, value = attribute
                        cur.execute("INSERT INTO BusinessAttributes (business_id, attribute_name, value)"
                                    " VALUES (%s, %s, %s)",
                                    (cleanStr4SQL(data['business_id']), cleanStr4SQL(key), value))            
                        count_line +=1

                except Exception as e:
                    print("Insert to BA failed!",e)
                

            conn.commit()
            line = f.readline()
            

        cur.close()
        conn.close()

    print(count_line)
    #outfile.close()  #uncomment this line if you are writing the INSERT statements to an output file.
    f.close()

def insert2BCTable():
    #reading the JSON file
    with open('phase2\yelp_business.JSON','r') as f:    #TODO: update path for the input file
        line = f.readline()
        count_line = 0

        #connect to yelpdb database on postgres server using psycopg2
        try:
            #TODO: update the database name, username, and password
            conn = psycopg2.connect("dbname='phase2' user='zdszeto' host='localhost' password='22005PineHill!'")
        except:
            print('Unable to connect to the database!')
        cur = conn.cursor()

        while line:
            data = json.loads(line)
            #print(data)
            # Generate the INSERT statement for the current business
            # TODO: The below INSERT statement is based on a simple (and incomplete) businesstable schema. Update the statement based on your own table schema and
            # include values for all businessTable attributes
        

            #BC
            categories = data['categories'].split(", ")
            
            for business_category in categories:
                try:
                    cur.execute("INSERT INTO BusinessCategories (business_id, category_name)"
                    " VALUES (%s, %s)",
                    (cleanStr4SQL(data['business_id']), cleanStr4SQL(business_category)))             
            
                except Exception as e:
                    print("Insert to BC failed!",e)
                count_line +=1
            
            conn.commit()
            line = f.readline()
            

        cur.close()
        conn.close()

    print("Business Count:" + count_line)
    #outfile.close()  #uncomment this line if you are writing the INSERT statements to an output file.
    f.close()

insert2BusinessTable()
#insert2BCTable()
insert2BATable()
#insert2UsersTable()
#insert2FriendsTable()
#insert2TipsTable()

