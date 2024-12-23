import Component from '@glimmer/component';
import SubComponent from './sub';
import type { WithBoundArgs } from '@glint/template';
import { hash } from '@ember/helper';

export default class TestComponent extends Component<{
  Blocks: {
    default: [
      { sub: WithBoundArgs<typeof SubComponent<string>, 'boundValue'> },
    ];
  };
}> {
  get test() {
    return 'test';
  }

  <template>
    <div>
      {{yield (hash sub=(component SubComponent boundValue='foo'))}}
    </div>
  </template>
}
