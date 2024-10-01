Flutter Counter App with Bloc
Overview
This is a basic Flutter counter app that demonstrates the usage of the Bloc (Business Logic Component) pattern for state management. The app allows users to increment and decrement a counter while managing the state in a clean and scalable way using flutter_bloc.

Features
A simple counter that increments or decrements based on user input.
Uses the Bloc pattern to manage state changes.
Separation of business logic from UI components.
Provides a scalable and testable architecture for state management.
Bloc Architecture
Bloc stands for Business Logic Component. It is one of the most popular design patterns for managing state in Flutter apps. Bloc helps in:

Separation of concerns: It separates the business logic from the UI.
Testability: It makes the business logic easier to test.
Predictability: Since events trigger state changes, it makes the state management predictable and easy to debug.
Key Components of Bloc
Events: Actions initiated by the user (e.g., incrementing or decrementing the counter).
State: The output of the Bloc based on the current state and the received event.
Bloc: Manages the flow of events and state, handling the logic for state changes.
CounterBloc Architecture Breakdown
CounterBloc: The central component of the architecture that handles events (IncrementCounter, DecrementCounter) and updates the state (CounterState).
CounterState: Holds the current state of the counter (e.g., the current count).
CounterEvent: Represents the actions that the user can trigger, such as incrementing or decrementing the counter.
Bloc Flow
Events: The user interacts with the UI by pressing the "Increment" or "Decrement" button.
Bloc: Receives these events and applies the necessary business logic to compute the new state.
State: The new state (the updated counter value) is emitted, which is then displayed in the UI.
How It Works
The CounterScreen uses a BlocBuilder to listen for state changes from the CounterBloc.
Whenever the user presses the "Increment" or "Decrement" button, an event is dispatched to the CounterBloc.
The CounterBloc processes the event and updates the state, which then triggers the UI to rebuild with the new counter value.
