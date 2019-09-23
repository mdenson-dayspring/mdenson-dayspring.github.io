---
layout: post
title: Street Address, Mailing Address, and Sending Mail
date: 2019-09-20 00:00:00.000000000 -07:00
type: post
parent_id: '0'
published: true
password: ''
status: publish
categories:
- Software
tags:
- work
author: Matthew
---
This is a little different for a post from me. This one is more of an observation about the use of Customer Relationship Management (CRM) tools.

A little background about my particular situation will help explain why this topic is important to me. My wife and I live on a boat in a marina that does not provide a mail box for residents. When we were getting ready to live aboard our boat we knew this and figured there would be no problem, we would just get a post office box and that - would be that.

Well, that has not been that. It is a pain to have a P.O. BOX as our mailing address. Why? Because it seems like every organization I deal with, car dealers, loan originators, insurance providers, DMV, HMO company, doctor's offices, etc., etc.; they all insist on getting a street address. "Oh, don't worry we'll collect a mailing address where all mail will be sent." Hah! I wish that was true. All of them send mail to the address of the marina and I regularly get a email saying I have received mail at the marina office. From my landlord as it were. At the end of the email is always a reminder that I am not supposed to receive mail at the marina.

What is particularly irritating is that it does no good to call the provider, because they already have the correct address in the mailing address fields and they will not accept a PO BOX for the residence address. The problem is not with the data entry or data structure it is with the people doing reporting. One problem is the employees or consultants that the provider hires to create this mailing list or that, don't put in the needed effort to get the mailing address. "Oh whatever it is an address, it will work." Yeah it will get delivered and I get another reminder from my landlord that "you should not be receiving mail at this address." Is it really too much effort to get the mailing address to mail a piece of correspondence?

As an engineer who works with providing CRMs to clients I wonder if there are solutions to this. I haven't thought of any magic cures. But, I do get too many prompts to think about the problem. There are a couple issues:

1. If mailing address is going to be used it needs to always be populated. It isn't enough to leave it blank if it is the same as the street address. That requires that every time a mailing is done the report of the addresses requires logic to look for the mailing address and if it is blank use the street address. Well that sort of logic is a pain and will get skipped.
2. If there is some field to indicate which address to use for postal mailings, again it requires the report developer to take extra steps to get the right address. Again they will probably just user the address that is always populated.
3. If any report to export the addresses (again a later action) to other systems skips the necessary logic, then that downstream system where the address is loaded does not even know that there is a different mailing address. They can't send an address they don't have. And fixing the problem on the source database if the address was wrong will not fix the databases downstream.

Anyway as a purveyor of CRM systems I thought I would raise it. This is a case where the current practice does not work. "But, it is a very small percentage use case." That is efficient reasoning but it also actually impacts the people, like me, in that small percentage case.
