Project.destroy_all
Post.destroy_all

Project.create!(user_id: 1,
                name: 'Webglossary',
                description: 'Glossaire des mots utiles pour le monde de la programmation et de développement web.',
                image_url: 'https://drive.google.com/file/d/1nFtprLTs3DXTsI8-ctMQccLiaDYwKN-l/view?usp=sharing',
                demo_url: 'https://webglossary.herokuapp.com/')

puts 'Generated new project'

Post.create!(user_id: 1,
             name: 'Hello world',
             description: 'Test a new post',
             image_url: 'https://drive.google.com/file/d/1nFtprLTs3DXTsI8-ctMQccLiaDYwKN-l/view?usp=sharing',
             demo_url: 'https://webglossary.herokuapp.com/')

puts 'Generated new post'
