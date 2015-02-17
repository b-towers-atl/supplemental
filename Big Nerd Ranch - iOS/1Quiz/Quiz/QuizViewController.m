//
//  QuizViewController.m
//  Quiz
//
//  Created by Bobby Towers on 1/7/15.
//  Copyright (c) 2015 Bobby Towers. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray * questions;
@property (nonatomic, copy) NSArray * answers;

@property (weak, nonatomic) IBOutlet UILabel * questionLabel;
@property (weak, nonatomic) IBOutlet UILabel * answerLabel;

@end

@implementation QuizViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil {
    
    // call the init method by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Create two arrays filled with questions and answers
        // and make the pointers point to them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7 + 7?",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
    // return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender {
    
    // step to the next question
    self.currentQuestionIndex++;
    
    // am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        
        // go back to the first question
        self.currentQuestionIndex = 0;
        
    }
    
    // get that string
    NSString * question = self.questions[self.currentQuestionIndex];
    
    // display the string in the question label
    self.questionLabel.text = question;
    
    // reset the answer label
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender {
    
    // what is the answer to the current question?
    NSString * answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
    
}

@end
