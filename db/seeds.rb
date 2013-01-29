# Seeds

slim = Project.create! do |p|
  p.title = 'Slim - The Thinnest Wallet Ever.'
  p.subtitle = 'The Supr Slim Wallet is a super-thin, card-carrying over-achiever. Designed for minimalists.'
  p.description = "<h2>MEET SUPR SLIM: A MINIMALIST'S WALLET</h2><img alt='1' src='/assets/slim/1.jpg'><p>Supr Slim is designed for the person who hates schlepping around a bunch of unnecessary stuff in their pockets like one-dollar bills, coins, receipts, and year-old loyalty cards. Thanks to smarter phones and the good people at Square, carrying all that extra stuff in your wallet is a thing of the past.</p><p>We believe that all you really need in your wallet are your essential cards. Supr Slim was created with this in mind - to be a super-thin, card-carrying over-achiever.</p><img alt='2' src='/assets/slim/2.jpg'><h2>WHY SUPR SLIM IS BETTER: A WALLET DESIGNED TO STRETCH</h2><p>We observed that many of today's minimal wallets fail because the material (usually leather) stretches out leaving it unable to hold a smaller number of cards. The beauty of our durable, elastic design is that Supr Slim stretches and wraps tightly around your cards. Whether you carry 10 cards one week and then 2 cards for the weekend, Supr Slim will never stretch out or lose its ability to grip your cards.</p><img alt='3' src='/assets/slim/3.jpg'><h2>SUPR SLIM IS AMAZINGLY THIN</h2><p>At only 3 mm, Supr Slim is as thin as the cards in your pocket.</p><img alt='4' src='/assets/slim/4.jpg'><h2>SUPR SLIM IS EASY TO ACCESS</h2><p>Supr Slim keeps the cards you use most at your fingertips. So helpful.</p><img alt='5' src='/assets/slim/5.jpg'><h2>SUPR SLIM IS SPEEDY</h2><p>You will breeze through RFID scanners.</p><img alt='6' src='/assets/slim/6.jpg'><h2>SUPR SLIM IS COLORFUL</h2><p>We made Supr Slim in six colors. One for everyone.</p><img alt='7' src='/assets/slim/7.jpg'>"
end

slim.team = Team.create! do |t|
  t.name = "Supr Good Co."
  t.ptich = "Supr is the studio of Aaron Melander and Erik Melander. We are two brothers on a mission to create products that help people live more simply. And maybe eat some tasty pancakes along the way."
  t.location = "Minneapolis, MN"
  t.description = <<-DESCRIPTION
      TEAM DESCRIPTION: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
      consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    DESCRIPTION
end

founder_description = <<-DESCRIPTION
  FOUNDER DESCRIPTION: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
  consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
  proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
DESCRIPTION
