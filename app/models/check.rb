class Check < ActiveRecord::Base
  belongs_to :policy
  @@type_hash = { "categories" => ["current_agents_categories_names"], "agents" => ["current_agents_names"], "level" => ["levels", "last"], "specialist" => ["team", "specialist"], "specialty" => ["team", "specialty"] }  

  @@check_hash = { "bp" => "dbp", "k" => "potassium", "surname" => "surname"}
  @@operator_hash = { ">" => ">", "<" => "<" , "=" => "==", "has" => "include?" }
  

  def perform_check(patient)
    operations = arrayit(check_type, operator, clean(value), check)
    operations.delete(nil)
    result = { :check => self, :result => (test == process(patient,operations))}
    return result
  end

  def description
    s = check_type
    unless check.nil? or check.empty?
      s+= " " + check
    end
    s+= " " + operator + " " + value
  end

private

 def process(p,x)
      if x.size>2
        process(p.send(x[0]), x[1, x.size-1])
        else if x.size==2
          process(p.send(x[0],x[1]), [])
          else
            return p
        end
      end
  end


 def arrayit(type, operator, value, check=nil)
    operations = @@type_hash[type].dup 
    operations << @@check_hash[check]
    op = @@operator_hash[operator]   
    return operations + [op] + [value]
  end

  def clean(o)
    if o.class == String and o < "99999"
      return o.to_i
    else return o
    end
  end


#def puresend(p, x)
#  if x.size>0
#    puresend(p.send(x[0]), x[1, x.size-1])
#  else return p
#  end
#end

end
