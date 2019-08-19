## Database Layout
Potential layout of the database

### Users
username: :string
password: :string

### Hymns
title: :string
description: :text
story: :text
editorRating: :integer
editorReview: :text
doctrine: :integer
scriptural: :integer

### Reviews
user: :references
hymn: :references
rating: :integer
review: :text
helpful: :integer
unhelpful: :integer
