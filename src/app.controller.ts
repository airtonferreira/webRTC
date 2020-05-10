import { Controller, Get, Render } from '@nestjs/common';

@Controller()
export class AppController {
  constructor() { }

  @Get()
  @Render('index')
  root() { }

  @Get('receiver')
  @Render('receiver')
  receiver() { }

  @Get('sender')
  @Render('sender')
  sender() { }

}
