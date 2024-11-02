name="Mario_Bugarin"

echo "$name"

program_folder="${name}_program"

mkdir -p "$program_folder"

source_files=("Guesser.java" "guessingGame.java")

for file in "${source_files[@]}"; do
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
