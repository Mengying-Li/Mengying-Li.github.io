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
      job_title: "External Communication and Internal Development Intern",
      company: "SuperAcademy",
      location: "Beijing, China",
      date: "01/2015 to present",
      description: content_tag(:p, "Worked as a CS tutor for 3 days in coding summer camp in Changzhou International School") +
                   content_tag(:p, "Gave a 3-hour lecture for 20 students in Affiliated High School of Peking University about Intro to Cogs") +
                   content_tag(:p, "Helped to set business strategy for company’s early developing stage") +
                   content_tag(:p, "Cooperated with founders to built prototype of the website") +
                   content_tag(:p, "Wrote multiple articles on the website including an article with over 3700 clicks on analyzing the rule of effectively using social media (http://www.thu.io/posts/anGphJdCKotjGdMzK )")
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
        { name: "Assembly", percent: 70, text: "Intermediate Level" },
        { name: "Python", percent: 70, text: "Intermediate Level" },
        { name: "R", percent: 70, text: "Intermediate Level" },
      ]
    }
  ],

  portfolio: [
    {
      name: "CCL Database Website",
      type: :img,
      technologies: "NodeJS, jQuery, mySQL",
      img_thumb: "img/ccl_thumb.png",
      img_full: "img/ccl_full.png",
      description: content_tag(:p, "Role: Lead Developer.") +
                   content_tag(:p, "Front-end and back-end development (nodeJS, mySQL, Handlebars") +
                   content_tag(:p, "Features such as authentication, administration of data, search, ...") +
                   content_tag(:p, "Conception of the design and of the UX part of the website") +
                   content_tag(:a, "Available on Github!", href: "https://github.com/Cylix/database_website", target: "_blank")
    },
    {
      name: "Re::Time",
      type: :img,
      technologies: "NodeJS, jQuery, mySQL",
      img_thumb: "img/retime_thumb.png",
      img_full: "img/retime_full.png",
      description: content_tag(:p, "Role: Developer.") +
                   content_tag(:p, "Front-end and back-end development") +
                   content_tag(:p, "Features such as TODO tasks management, countdown, authentication, ...") + 
                   content_tag(:a, "Website link!", href: "http://retime.herokuapp.com", target: "_blank")
    },
    {
      name: "VR Classroom",
      type: :video,
      technologies: "Unity, VR",
      img_thumb: "img/vr_thumb.png",
      video: "http://www.youtube.com/embed/lx9LApgjfbw",
      description: content_tag(:p, "Work on front-end application team for implementing the student-side functions") +
                   content_tag(:p, "Implement student's note-taking feature which use VR controller to draw smooth lines on the canvas") +
                   content_tag(:p, "Implement the UX design of the VR controller menu")
    }
  ]
}

puts Slim::Template.new('index.slim').render Object.new, vars
