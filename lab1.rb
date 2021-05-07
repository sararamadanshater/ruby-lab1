class ComplexNumber
    attr_reader :real, :imaginary
    @@counter_add=0
    @@counter_mul=0
    def initialize(real, imaginary)
        @real = real
        @imaginary = imaginary
    end
  
    
  
    def +(cn1)
        new_real = real+cn1.real 
        new_imaginary = imaginary+cn1.imaginary
        sum=print(new_real,"+",new_imaginary,"i")
        @@counter_add +=1
        
    
    end
  
    
  
    def *(cn1)
      new_real = real * cn1.real - imaginary * cn1.imaginary
      new_imaginary = imaginary * cn1.real + real * cn1.imaginary
      multiply=print(new_real, "+",new_imaginary,"i")
      @@counter_mul +=1
      
    end

    def bulk_add(cns)
        new_real=0
        new_imaginary=0
        cns.each do |num|
            new_real=new_real+num.real 
            new_imaginary=new_imaginary+num.imaginary
        end
        sum=print(new_real,"+",new_imaginary,"i")
        @@counter_add +=1
    end

    def bulk_multiply(cns)
        new_real=1
        new_imaginary=1
        cns.each do |num|
            new_real=(1 * num.real) - (1 * num.imaginary)
            new_imaginary = (1 * num.real) + (1 * num.imaginary)
        end
        multiply=print(new_real, "+",new_imaginary,"i")
        @@counter_mul +=1
      
    end
    def get_stats()
        print("\n")
        print( @@counter_add) 
        print("\n")
        print( @@counter_mul) 
        
        
        
    end
      


    

end
#test add function
n1=ComplexNumber.new(2,3)
n2= n1.+(2+3i)
puts n2
#test multiply function
n3=ComplexNumber.new(2,3)
n4= n3.*(2+3i)
puts n4
#test bulk_add function
n5=ComplexNumber.new(0,0)
n6=n5.bulk_add([2+3i,2+3i,1+1i,5+3i])
puts n6
#test bulk_multiply function
n7=ComplexNumber.new(1,1)
n8=n7.bulk_multiply([2+3i,2+3i])
puts n8

#test bulk_multiply function
n1.get_stats()

