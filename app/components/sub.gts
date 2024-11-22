import Component from '@glimmer/component';

export default class SubComponent extends Component<{
  Args: { test: string };
}> {
  get other() {
    return 'other';
  }

  <template>{{@test}}</template>
}
