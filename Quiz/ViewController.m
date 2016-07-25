//
//  ViewController.m
//  Quiz
//
//  Created by Caren Chang on 7/24/16.
//  Copyright © 2016 calren. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIButton *questionButton;
@property (weak, nonatomic) IBOutlet UIButton *answerButton;

@property (nonatomic) int currentQuestionIndex;

@end

@implementation ViewController

- (IBAction)showQuestion:(id)sender {
    int lowerBound = 0;
    int upperBound = 3;
    self.currentQuestionIndex = lowerBound + arc4random() % (upperBound - lowerBound);
    
    NSArray *questions = @[@"How many Pokemons are in the first generation?", @"What is Ash's first Pokemon?", @"What are the three starter Pokemons?"];

    
//    NSString *testString = @"What kind of Pokemon is Squirtle?";
//    self.questionLabel.text = testString;
    
    NSString *currentQuestion = questions[self.currentQuestionIndex];
    self.questionLabel.text = currentQuestion;
    
}

- (IBAction)showAnswer:(id)sender {
//    NSString *testString = @"Water";
//    self.answerLabel.text = testString;
    NSArray *answers = @[@"150", @"Pikachu", @"Bulbasaur, Charmander, Squirtle"];
    self.answerLabel.text = answers[self.currentQuestionIndex];
}


@end
