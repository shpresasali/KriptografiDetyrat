// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentStruct {
    
    // Struktura për student
    struct Student {
        uint id;
        string name;
        uint grade;
    }

    // Array që ruan studentët në storage
    Student[] public students;

    // Shton një student të ri
    function addStudent(uint _id, string memory _name, uint _grade) public {
        students.push(Student(_id, _name, _grade));
    }

    // Kthen një kopje të studentit në memory (jo ndryshim real në gjendje)
    function getStudent(uint index) public view returns (Student memory) {
        require(index < students.length, "Invalid index");
        Student memory s = students[index];
        return s;
    }

    // Ndryshon notën e studentit përmes referencës në storage
    function updateGrade(uint index, uint newGrade) public {
        require(index < students.length, "Invalid index");

        // Marrim referencë storage të studentit
        Student storage s = students[index];
        s.grade = newGrade; // ndryshojmë gjendjen direkt
    }
}
