import Component from '@glimmer/component';
import SubComponent from './sub';

export default class TestComponent extends Component {
  get test() {
    return 'test';
  }

  <template>
    {{! should emit a lint error for non interactive }}
    <div role='button'>
      {{! should emit a lint error for curly braces }}
      <SubComponent @test={{'hello world'}} />
    </div>
  </template>
}
