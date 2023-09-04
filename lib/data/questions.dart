import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion("What is Flutter?", [
    "A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.",
    "A programming language designed for building user interfaces.",
    "A database management system.",
    "A design software for creating icons and graphics."
  ]),
  QuizQuestion("What is Dart?", [
    "A programming language used for building Flutter apps.",
    "A type of bird known for its colorful plumage.",
    "A popular JavaScript framework.",
    "A tool for managing project dependencies."
  ]),
  QuizQuestion("What is a widget in Flutter?", [
    "A reusable building block for constructing user interfaces.",
    "A type of animation effect.",
    "A data storage format.",
    "A unit of measurement in Flutter layouts."
  ]),
  QuizQuestion(
      "Which widget is used to create a container with a fixed width and height in Flutter?",
      ["Container", "Box", "Frame", "Square"]),
  QuizQuestion("What is the main function in Dart used for?", [
    "Serving as the entry point of a Dart program.",
    "Defining global variables.",
    "Creating widgets.",
    "Handling user input."
  ]),
  QuizQuestion("How can you perform navigation between screens in Flutter?", [
    "Using the Navigator class and routes.",
    "By directly manipulating pixels on the screen.",
    "Changing the device's orientation.",
    "Using the ScreenManager widget."
  ]),
  QuizQuestion("What is the purpose of the setState method in Flutter?", [
    "To update the state of a widget and trigger a rebuild of the user interface.",
    "To define the layout structure of a widget.",
    "To create animations and transitions.",
    "To change the font size of a text widget."
  ]),
  QuizQuestion(
      "What does the term \"hot reload\" refer to in Flutter development?", [
    "The ability to instantly see changes in the app's UI without restarting the app.",
    "A method for loading images into the app.",
    "A feature for compiling code faster.",
    "The process of debugging errors in the app."
  ]),
  QuizQuestion(
      "Which widget is used to display a list of scrollable items in Flutter?",
      ["ListView", "GridView", "ScrollList", "ItemView"]),
  QuizQuestion("What is a \"stateless\" widget in Flutter?", [
    "A widget that doesn't have mutable state and is immutable once created.",
    "A widget that is always the same size as its parent.",
    "A widget that is primarily used for handling user input.",
    "A widget that can change its appearance dynamically."
  ]),
];
