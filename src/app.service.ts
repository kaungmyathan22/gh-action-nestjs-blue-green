import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return `minglar par ${process.env.HOSTNAME}`;
  }
  ping() {
    return { message: 'pong' };
  }
}
