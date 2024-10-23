
Name="Mario_Bugarin"


echo "$name"


mkdir -p "$name_program"

source_files=("Guesser.java" "guessingGame.java")
program_folder= "Mario_Bugarin"

mkdir -p "$program_folder"

for file in *.java 
 do
    cp "$file" "$program_folder"
done

cd "$program_folder" || exit

echo "Current working directory: $(pwd)"

echo "Compiling..." 
javac *.java

echo "Running game..."
java guessingGame

echo "done."

echo "Removing class files..." 

rm *.class

ls 