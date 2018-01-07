# -*- coding: utf-8 -*-
require 'slim'
require 'action_view'
include ActionView::Context
include ActionView::Helpers::TagHelper
include ActionView::Helpers::TextHelper

vars = {
  full_name: "Mengying Li",

  title: "3rd year Math & CS Student",

  profile_categories: {
    "Availability" => content_tag(:p, "Looking for a summer internship.")
  },

  education: [
    {
      diploma: "Math & Computer Science joint major",
      school: "University of California, San Diego (UCSD)",
      year: "2015 - 2019 (expected)",
      description: content_tag(:p, "Overall GPA: 3.6") +
                   content_tag(:p, "Relevant Coursework: Data Structure and Objective Oriented Design, Web Design, Advanced Data Structures, Design and Analysis of the Algorithms, Software Engineering, Intro to Machine Learning")
    }
  ],

  work_experiences: [
    {
      job_title: "Software Developer Intern",
      company: "Nanome Inc",
      location: "San Diego, USA",
      date: "06/2017 to 09/2017",
      description: content_tag(:p, "Implemented a notification board feature in existing VR application using C# in unity") +
                   content_tag(:p, "Built a 2D portal for people to enter the biology conference room in application using C#") +
                   content_tag(:p, "Parsed MMCIF format file from the World Protein Bank to the application in C#")
    },
    {
      job_title: "Full Stack Developer",
      company: "Comparative Cognition Lab (UCSD)",
      location: "San Diego, USA",
      date: "02/2017 to 07/2017",
      description: content_tag(:p, "Designed and implemented a website using nodeJS, mySQL, Handlebars to handle data about primates") +
                   content_tag(:p, "Coded features such as authentication, data administration, search, …") +
                   content_tag(:p, "Prepared and presented technical and design proposals to the 20 lab members") +
                   content_tag(:p, "Troubleshooted and resolved issues reported by end-users") +
                   content_tag(:p, "Github link: https://github.com/chasingfuture/Database_website")
    },
    {
      job_title: "District Conference Secretary General, Club Leader",
      company: "Model United Nations (MUN)",
      location: "Beijing, China",
      date: "09/2011 to 09/2015",
      description: content_tag(:p, "Worked as founder, organizer and director during district/national conferences") +
                   content_tag(:p, "Organized training sessions monthly and arranged academic tests for junior club members as the MUN club leader in my high school") +
                   content_tag(:p, "Won the Best Debater, the Best Delegate Awards in different conferences") +
                   content_tag(:o, "In charge of sponsorship for MUN committee, raised fund of over 10,000 dollars for one conference")
    }
  ],

  skills: [
    {
      type: "Professional Skills",
      progress_bar_type: "progress-bar-1",
      skills: [
        { name: "Team Work", percent: 100, text: "" },
        { name: "Proactivity", percent: 100, text: "" },
        { name: "Adaptability", percent: 100, text: "" }
      ]
    },
    {
      type: "Languages Skills",
      progress_bar_type: "progress-bar-2",
      skills: [
        { name: "Chinese", percent: 100, text: "Native Language" },
        { name: "English", percent: 90, text: "Advanced Level (TOEFL 109)" }
      ]
    },
    {
      type: "Code Skills",
      progress_bar_type: "progress-bar-3",
      skills: [
        { name: "HTML/CSS", percent: 90, text: "Proficient" },
        { name: "Java", percent: 90, text: "Proficient" },
        { name: "C", percent: 90, text: "Proficient" },
        { name: "C++", percent: 90, text: "Proficient" },
        { name: "C#", percent: 90, text: "Proficient" },
        { name: "MATLAB", percent: 90, text: "Proficient" },
        { name: "NodeJS", percent: 70, text: "Intermediate Level" },
        { name: "MySQL", percent: 70, text: "Intermediate Level" },
        { name: "JS/jQuery", percent: 70, text: "Intermediate Level" },
        { name: "React", percent: 70, text: "Intermediate Level" },
        { name: "Python", percent: 70, text: "Intermediate Level" },
        { name: "R", percent: 70, text: "Intermediate Level" },
        { name: "Assembly", percent: 70, text: "Intermediate Level" },
      ]
    }
  ],

  portfolio: [
    {
      name: "Friend-Zone",
      type: :video,
      technologies: "React, firebase",
      img_thumb: "img/friend_thumb.png",
      video: "https://www.youtube.com/embed/dQOOcZRRNdo",
      description: content_tag(:p, "Role: Databse Specialist") +
                   content_tag(:p, "Introduction: The website seeks to help students make friends based on their mutual courses, to chat and to plan events") +
                   content_tag(:p, "Wrote component to communicate front-end with the back-end database using React.JS") +
                   content_tag(:p, "Implemented back-end database using firebase and handled cloud storage using firebase") +
                   content_tag(:p, "Coded profile page and loading page using React.JS and CSS") +
                   content_tag(:a, "Website link!", href: "https://friendzoned.us", target: "_blank")
    },
    {
      name: "Bitcoin price prediction, machine learning project",
      type: :video,
      technologies: "React, firebase",
      img_thumb: "img/bitcoin_thumb.png",
      video: "https://www.youtube.com/embed/dQOOcZRRNdo",
      description: content_tag(:p, "Role: Lead Developer") +
                   content_tag(:p, "Introduction: Tool to predict bitcoin price with LSTM model using a day by day historical price dataset") +
                   content_tag(:p, "Built the training model of LSTM using python with keras in Jupyter Notebook with my teammates") + 
                   content_tag(:p, "Successfully get prediction of next day and 5-day trend with smaller error than random walk method")
    },
    {
      name: "VR Classroom",
      type: :video,
      technologies: "Unity, VR, C#",
      img_thumb: "img/vr_thumb.png",
      video: "http://www.youtube.com/embed/lx9LApgjfbw",
      description: content_tag(:p, "Role: Developer") +
                   content_tag(:p, "Introduction: Virtual reality classroom where students and teachers can communicate through gesture, voice and writing") +
                   content_tag(:p, "Work on front-end application team for implementing the student-side functions") +
                   content_tag(:p, "Implement student's note-taking feature which use VR controller to draw smooth lines on the canvas") +
                   content_tag(:p, "Implement the UX design of the VR controller menu")
    }
  ]
}

puts Slim::Template.new('index.slim').render Object.new, vars
