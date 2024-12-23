import { on } from '@ember/modifier';
import { action } from '@ember/object';
import Component from '@glimmer/component';

export default class SubComponent<T> extends Component<{
  Args: { type: T; boundValue: string; someEvent: (type: T) => void };
}> {
  get other() {
    return 'other';
  }

  @action
  handleEvent() {
    if (this.args.someEvent) {
      this.args.someEvent(this.args.type);
    }
  }

  <template>
    <div role='button' {{on 'click' this.handleEvent}}>
      Test Button
    </div>
  </template>
}
