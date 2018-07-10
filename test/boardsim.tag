<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile>
  <compound kind="struct">
    <name>TerminalView::_dragInfo</name>
    <filename>d2/dcf/struct_terminal_view_1_1__drag_info.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::IRegister::AbstractAccessor</name>
    <filename>d9/d18/classbsim_1_1_i_register_1_1_abstract_accessor.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>access</name>
      <anchorfile>d9/d18/classbsim_1_1_i_register_1_1_abstract_accessor.html</anchorfile>
      <anchor>a44d84e5148988d3544a40831b2b660bb</anchor>
      <arglist>(addr_t a, int s, void *d)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::AbstractRegisterNode</name>
    <filename>d3/d6e/classbsim_1_1_abstract_register_node.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::ActionMonitor</name>
    <filename>d3/d83/classbsim_1_1_action_monitor.html</filename>
    <base>bsim::IMonitor</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>warn</name>
      <anchorfile>d3/d83/classbsim_1_1_action_monitor.html</anchorfile>
      <anchor>a4d47043f43c6089bc5afc16e83f01f1d</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>error</name>
      <anchorfile>d3/d83/classbsim_1_1_action_monitor.html</anchorfile>
      <anchor>aafdca11fb8c0dbb4fdc2995c42363bf5</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>info</name>
      <anchorfile>d3/d83/classbsim_1_1_action_monitor.html</anchorfile>
      <anchor>af9ab2285a4f62db048ca1b8523048816</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>handleError</name>
      <anchorfile>d3/d83/classbsim_1_1_action_monitor.html</anchorfile>
      <anchor>ab2ef85e5b0f6f9cd87e9abed8a24155c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>d3/d83/classbsim_1_1_action_monitor.html</anchorfile>
      <anchor>a0934ecb8d4487f691bbdc3ecae7be3ec</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasError</name>
      <anchorfile>d3/d83/classbsim_1_1_action_monitor.html</anchorfile>
      <anchor>a750995ab3c2e265929848917a74858d4</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ADC</name>
    <filename>dc/d67/classbsim_1_1_a_d_c.html</filename>
    <base>bsim::IComponent</base>
    <class kind="class">bsim::ADC::CRClass</class>
    <class kind="class">bsim::ADC::MRClass</class>
    <class kind="class">bsim::ADC::SRClass</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>dc/d67/classbsim_1_1_a_d_c.html</anchorfile>
      <anchor>a19e31eb5461124fa3f2333b728c43e5c</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>genHeader</name>
      <anchorfile>dc/d67/classbsim_1_1_a_d_c.html</anchorfile>
      <anchor>ac31a005a02f19a3dfbe57f023712cce5</anchor>
      <arglist>(QTextStream &amp;out)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>it</name>
      <anchorfile>dc/d67/classbsim_1_1_a_d_c.html</anchorfile>
      <anchor>af0ea44561d95beb470ce63970fc6e9aa</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>adc_reset</name>
      <anchorfile>dc/d67/classbsim_1_1_a_d_c.html</anchorfile>
      <anchor>a13e438c734f2195fc0d0f50470c16504</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start_convrt</name>
      <anchorfile>dc/d67/classbsim_1_1_a_d_c.html</anchorfile>
      <anchor>a1bd9a0f69043103d84ccee65f546da6b</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::AddressBreakPoint</name>
    <filename>d7/d51/classbsim_1_1_address_break_point.html</filename>
    <base>bsim::BreakPoint</base>
    <member kind="function">
      <type></type>
      <name>AddressBreakPoint</name>
      <anchorfile>d7/d51/classbsim_1_1_address_break_point.html</anchorfile>
      <anchor>a4adde3bbe542f7703d0b4e1cf4c22ddd</anchor>
      <arglist>(addr_t addr)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>saveSettings</name>
      <anchorfile>d7/d51/classbsim_1_1_address_break_point.html</anchorfile>
      <anchor>a0a704ed6dae109b77c25e8d0025b8b56</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>name</name>
      <anchorfile>d7/d51/classbsim_1_1_address_break_point.html</anchorfile>
      <anchor>a49a2054bdf2b553ddfef53f099542687</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual addr_t</type>
      <name>address</name>
      <anchorfile>d7/d51/classbsim_1_1_address_break_point.html</anchorfile>
      <anchor>a826f4d9105f356c85d03b2fd658b6efd</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::AIC</name>
    <filename>d7/d17/classbsim_1_1_a_i_c.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>aa5f38021347cdfff2332984ff0e99a80</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getStaticConstants</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>ab16418e56c1ef96b247376633c4ab3b1</anchor>
      <arglist>(QVector&lt; Constant &gt; &amp;csts) const </arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getIVR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a06ff3f2f237790a403d978c291246b16</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getIVRIO</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a25e28edb696102518833cf154c3d72eb</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setIVR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>ad802bf50cebbe291f31c2894c4bb7e2c</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getFVR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>aa440e646955ae29e4797869c6d9bdc9d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getFVRIO</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>acff9ff77c2acfaf1839e5360f0537ed3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>setFVR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>aafe05c9c5d48e18884d6ba56462bb185</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getEOICR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>aed267ce4af4118e89f4e0485c09bc8e4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>observeEOICR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a11bd615f8f2f5ebfa05f3df2e393212d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setEOICR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a896b9176a24c98707aeaf2d8071819e3</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setIECR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a3482e2728c3d6397ba256f80d7a5bf20</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setIDCR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a88507943fe4bce792ff828675de1ca28</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setICCR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>af6a8ccef42d8badb55149f8fba50ec15</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setISCR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>abb6173d167f284fbb4cd65fba95931c2</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSPU</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a7690845f5dc291bbde0eef97a08ba61a</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDCR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a26c2d06db8e9ca97bdb377f10c78a2fb</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFFER</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>a3dd0c7d5a7d22235bb55a6046a278828</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setFFDR</name>
      <anchorfile>d7/d17/classbsim_1_1_a_i_c.html</anchorfile>
      <anchor>adced2890cbc8ae7406a375bd6788982f</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ARM</name>
    <filename>d5/dac/classbsim_1_1_a_r_m.html</filename>
    <base>bsim::Core</base>
    <member kind="function">
      <type>Program *</type>
      <name>load</name>
      <anchorfile>d5/dac/classbsim_1_1_a_r_m.html</anchorfile>
      <anchor>aff3e47237aef1672c51f43f237226e13</anchor>
      <arglist>(QString path, IMonitor &amp;mon)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>genHeader</name>
      <anchorfile>d5/dac/classbsim_1_1_a_r_m.html</anchorfile>
      <anchor>af6493a9ba6f9e75d3d3c76664af68547</anchor>
      <arglist>(lang_t lang, QTextStream &amp;out)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>d5/dac/classbsim_1_1_a_r_m.html</anchorfile>
      <anchor>a1f589b532ff9bb06549f50eb6dc4e7c5</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>d5/dac/classbsim_1_1_a_r_m.html</anchorfile>
      <anchor>a0603400701b35246f8d7b12e92808827</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>d5/dac/classbsim_1_1_a_r_m.html</anchorfile>
      <anchor>aedd6c43abda89906c22ba07738faa3d5</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>step</name>
      <anchorfile>d5/dac/classbsim_1_1_a_r_m.html</anchorfile>
      <anchor>aa59e9db9a0cec9f184ff777ebfa3fe17</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual uint32_t</type>
      <name>pc</name>
      <anchorfile>d5/dac/classbsim_1_1_a_r_m.html</anchorfile>
      <anchor>a52cd76acedd7be075930c050647fb7fe</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ARMProgram</name>
    <filename>df/d1d/classbsim_1_1_a_r_m_program.html</filename>
    <base>bsim::Program</base>
    <member kind="function">
      <type>arm_platform_t *</type>
      <name>platform</name>
      <anchorfile>df/d1d/classbsim_1_1_a_r_m_program.html</anchorfile>
      <anchor>a08d5fc8cc972387a6c8bfc5a84b90457</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isReady</name>
      <anchorfile>df/d1d/classbsim_1_1_a_r_m_program.html</anchorfile>
      <anchor>a5473c94c0d699693d76f0627b9d86307</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>lineOf</name>
      <anchorfile>df/d1d/classbsim_1_1_a_r_m_program.html</anchorfile>
      <anchor>a2f791c247a7e8a834df11b47327f2227</anchor>
      <arglist>(uint32_t address, QString &amp;file, int &amp;line)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>get</name>
      <anchorfile>df/d1d/classbsim_1_1_a_r_m_program.html</anchorfile>
      <anchor>a8fb517a523173a5eeac6084a47e63cc2</anchor>
      <arglist>(addr_t addr, uint32_t &amp;val)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual addr_t</type>
      <name>addressOf</name>
      <anchorfile>df/d1d/classbsim_1_1_a_r_m_program.html</anchorfile>
      <anchor>acb03c0ebbdd57681e5cbab535c03f3de</anchor>
      <arglist>(QString file, int line)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>listen</name>
      <anchorfile>df/d1d/classbsim_1_1_a_r_m_program.html</anchorfile>
      <anchor>a2a14376223e658872e93c5171d8f215e</anchor>
      <arglist>(addr_t addr)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ArrayGetterImpl</name>
    <filename>dd/d28/classbsim_1_1_array_getter_impl.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>bsim::Getter</base>
  </compound>
  <compound kind="class">
    <name>bsim::ArrayHardRegister32</name>
    <filename>d9/dad/classbsim_1_1_array_hard_register32.html</filename>
    <base>bsim::IHardRegister</base>
    <class kind="class">bsim::ArrayHardRegister32::Maker</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>set</name>
      <anchorfile>d9/dad/classbsim_1_1_array_hard_register32.html</anchorfile>
      <anchor>a232265f0dc7962456042dce56cf0cbf8</anchor>
      <arglist>(QVariant value, int i=0)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>read</name>
      <anchorfile>d9/dad/classbsim_1_1_array_hard_register32.html</anchorfile>
      <anchor>a47be57382880fd3ce7f0ce7f05b78d90</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>write</name>
      <anchorfile>d9/dad/classbsim_1_1_array_hard_register32.html</anchorfile>
      <anchor>a6fe413a37a46b5e550f83496852029a2</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setGetter</name>
      <anchorfile>d9/dad/classbsim_1_1_array_hard_register32.html</anchorfile>
      <anchor>accc0fe03f118be31a56ab7778eedb212</anchor>
      <arglist>(int i, Getter&lt; int32_t &gt; *getter)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSetter</name>
      <anchorfile>d9/dad/classbsim_1_1_array_hard_register32.html</anchorfile>
      <anchor>aff57054c595f3967e5ce8e66c4ff6616</anchor>
      <arglist>(int i, Setter&lt; int32_t &gt; *setter)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>ArrayHardRegister32</name>
      <anchorfile>d9/dad/classbsim_1_1_array_hard_register32.html</anchorfile>
      <anchor>ac553941941b03b4b461af751cb37adec</anchor>
      <arglist>(Board &amp;board, int count)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::uint32::ArrayRef</name>
    <filename>db/d16/classbsim_1_1uint32_1_1_array_ref.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::ArraySetterImpl</name>
    <filename>dd/df9/classbsim_1_1_array_setter_impl.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>bsim::Setter</base>
  </compound>
  <compound kind="class">
    <name>bsim::AssemblyHighlighter</name>
    <filename>da/df8/classbsim_1_1_assembly_highlighter.html</filename>
    <base>bsim::Highlighter</base>
  </compound>
  <compound kind="class">
    <name>bsim::AssemblySyntax</name>
    <filename>d8/d5c/classbsim_1_1_assembly_syntax.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::BankNode</name>
    <filename>df/d8b/classbsim_1_1_bank_node.html</filename>
    <base>bsim::ParentNode</base>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Register::Bit</name>
    <filename>d9/dab/classbsim_1_1_u_int32_register_1_1_bit.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array::Bit</name>
    <filename>d8/d4d/classbsim_1_1_u_int32_array_1_1_bit.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::Bit</name>
    <filename>d7/d68/classbsim_1_1_bit.html</filename>
    <templarg>T</templarg>
    <templarg>_i</templarg>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32ControlRegister::Bit</name>
    <filename>d5/d03/classbsim_1_1_u_int32_control_register_1_1_bit.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>bit</name>
      <anchorfile>d5/d03/classbsim_1_1_u_int32_control_register_1_1_bit.html</anchorfile>
      <anchor>ac643d4facfd9f98174fb4abfaf7e59af</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator()</name>
      <anchorfile>d5/d03/classbsim_1_1_u_int32_control_register_1_1_bit.html</anchorfile>
      <anchor>afd089da0fbf370d904bab230bc9d8974</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Bit&lt; uint32_t, 0 &gt;</name>
    <filename>d7/d68/classbsim_1_1_bit.html</filename>
  </compound>
  <compound kind="class">
    <name>Bit&lt; uint32_t, 1 &gt;</name>
    <filename>d7/d68/classbsim_1_1_bit.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Register::BitArray</name>
    <filename>d8/d7d/classbsim_1_1_u_int32_register_1_1_bit_array.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array::BitArray</name>
    <filename>d7/dc2/classbsim_1_1_u_int32_array_1_1_bit_array.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Register::BitEnum</name>
    <filename>d3/d26/classbsim_1_1_u_int32_register_1_1_bit_enum.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array::BitEnum</name>
    <filename>da/df8/classbsim_1_1_u_int32_array_1_1_bit_enum.html</filename>
    <base>bsim::IRegister::Field</base>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Register::BitField</name>
    <filename>dd/d26/classbsim_1_1_u_int32_register_1_1_bit_field.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array::BitField</name>
    <filename>d8/d46/classbsim_1_1_u_int32_array_1_1_bit_field.html</filename>
    <base>bsim::IRegister::Field</base>
  </compound>
  <compound kind="class">
    <name>bsim::BitField</name>
    <filename>d5/d7b/classbsim_1_1_bit_field.html</filename>
    <templarg>T</templarg>
    <templarg>_u</templarg>
    <templarg>_l</templarg>
  </compound>
  <compound kind="class">
    <name>BitField&lt; uint32_t, 4, 0 &gt;</name>
    <filename>d5/d7b/classbsim_1_1_bit_field.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::BitFieldInArray</name>
    <filename>de/da7/classbsim_1_1_bit_field_in_array.html</filename>
    <templarg></templarg>
    <templarg>_u</templarg>
    <templarg>_l</templarg>
    <class kind="class">bsim::BitFieldInArray::Delegate</class>
  </compound>
  <compound kind="class">
    <name>bsim::BitInArray</name>
    <filename>d3/dff/classbsim_1_1_bit_in_array.html</filename>
    <templarg></templarg>
    <templarg>_n</templarg>
    <class kind="class">bsim::BitInArray::Delegate</class>
  </compound>
  <compound kind="class">
    <name>bsim::uint32::BitRef</name>
    <filename>df/dec/classbsim_1_1uint32_1_1_bit_ref.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::BitVector</name>
    <filename>d4/dbb/classbsim_1_1_bit_vector.html</filename>
    <templarg>T</templarg>
    <class kind="class">bsim::BitVector::Delegate</class>
  </compound>
  <compound kind="class">
    <name>BitVector&lt; uint32_t &gt;</name>
    <filename>d4/dbb/classbsim_1_1_bit_vector.html</filename>
  </compound>
  <compound kind="struct">
    <name>Block</name>
    <filename>dc/d27/struct_block.html</filename>
  </compound>
  <compound kind="class">
    <name>BlockArray</name>
    <filename>d8/d45/class_block_array.html</filename>
    <member kind="function">
      <type></type>
      <name>BlockArray</name>
      <anchorfile>d8/d45/class_block_array.html</anchorfile>
      <anchor>a88f1350b37e5dc2352718c7a0086c3d1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~BlockArray</name>
      <anchorfile>d8/d45/class_block_array.html</anchorfile>
      <anchor>a90a4573fe727fda555c188f8ae4dc097</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>append</name>
      <anchorfile>d8/d45/class_block_array.html</anchorfile>
      <anchor>abd0370eb2dd1dcd1002de6dd5db4bc17</anchor>
      <arglist>(Block *block)</arglist>
    </member>
    <member kind="function">
      <type>const Block *</type>
      <name>at</name>
      <anchorfile>d8/d45/class_block_array.html</anchorfile>
      <anchor>a892b34e8a5aeed9ae95911adb0b478ee</anchor>
      <arglist>(size_t index)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setHistorySize</name>
      <anchorfile>d8/d45/class_block_array.html</anchorfile>
      <anchor>aa33e23c47848e5b5cd9527fd0f4be938</anchor>
      <arglist>(size_t newsize)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setSize</name>
      <anchorfile>d8/d45/class_block_array.html</anchorfile>
      <anchor>a9b0dca25ece63985c9de6be3b7aed598</anchor>
      <arglist>(size_t newsize)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Board</name>
    <filename>df/d9b/classbsim_1_1_board.html</filename>
    <member kind="function">
      <type></type>
      <name>Board</name>
      <anchorfile>df/d9b/classbsim_1_1_board.html</anchorfile>
      <anchor>aefe70b7218392c23e1656dc6ac0a67da</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>load</name>
      <anchorfile>df/d9b/classbsim_1_1_board.html</anchorfile>
      <anchor>aa8057ae28474c7c097249e9846851605</anchor>
      <arglist>(QString name, IMonitor &amp;monitor)</arglist>
    </member>
    <member kind="function">
      <type>IComponent *</type>
      <name>getComponent</name>
      <anchorfile>df/d9b/classbsim_1_1_board.html</anchorfile>
      <anchor>a53a55dec57ffd9cc33b3165e6a657cf8</anchor>
      <arglist>(QString name)</arglist>
    </member>
    <member kind="function">
      <type>QMap&lt; QString, IComponent * &gt; &amp;</type>
      <name>getComponents</name>
      <anchorfile>df/d9b/classbsim_1_1_board.html</anchorfile>
      <anchor>a59b55aca403110f78d3068be04204cd3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>mck</name>
      <anchorfile>df/d9b/classbsim_1_1_board.html</anchorfile>
      <anchor>a0756407a873c368f19ab679a1d20ccd3</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>df/d9b/classbsim_1_1_board.html</anchorfile>
      <anchor>a74a9dfb6f9afde339aff87a037f5e11e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop</name>
      <anchorfile>df/d9b/classbsim_1_1_board.html</anchorfile>
      <anchor>a11dd1aaa60b83a1193c1775a951c7e74</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::BoardView</name>
    <filename>d7/d65/classbsim_1_1_board_view.html</filename>
    <base>bsim::IView</base>
    <member kind="function">
      <type></type>
      <name>BoardView</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>ac65b97b8fdd593205162b6e9fd42b2e0</anchor>
      <arglist>(MainWindow &amp;window)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onClear</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>a5e79e7b353002ab5d704d9d336f0ca6f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>loadSettings</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>a4c72bf2d87b9380c62f0f9d1bd78c3f7</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>saveSettings</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>a4fd7279586474e61d8555a03c4646442</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBoardLoad</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>a0788118a82409203c4dfa8d1036e3d29</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>update</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>add9f516188e562e14b2ae30a917fd113</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onRun</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>a76a58031aba9630d4deed3cd4b82708c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBreak</name>
      <anchorfile>d7/d65/classbsim_1_1_board_view.html</anchorfile>
      <anchor>a268ff081a2551b0fac8046b20df01bf9</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::physics::Boiler</name>
    <filename>df/d3e/classbsim_1_1physics_1_1_boiler.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function">
      <type>void</type>
      <name>makeVisual</name>
      <anchorfile>df/d3e/classbsim_1_1physics_1_1_boiler.html</anchorfile>
      <anchor>a319022bf99e3aee02c07a866277c9ae2</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>configure</name>
      <anchorfile>df/d3e/classbsim_1_1physics_1_1_boiler.html</anchorfile>
      <anchor>a50f87ebafe4434ceec5840c86e275a92</anchor>
      <arglist>(Configuration &amp;conf, IMonitor &amp;monitor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>df/d3e/classbsim_1_1physics_1_1_boiler.html</anchorfile>
      <anchor>a687ee39adb86b0a67a7819bbff1ff7b5</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::BreakPoint</name>
    <filename>dc/d26/classbsim_1_1_break_point.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>isEnabled</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>a09d6f5b65708333263ef4f2fa3ac7830</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isDisabled</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>a4d825dfa537e0ca03bf43f677d585089</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>enable</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>a8e18dfc0252d4b1ade22f6df29a6195d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disable</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>a9acab8d7a62c0e4bd4c95f8e2aa10a92</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual QString</type>
      <name>name</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>aca05dd2e1dd9751f351255bd3148b271</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual addr_t</type>
      <name>address</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>a5140d883c51e634f2394bda24760e702</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>saveSettings</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>a35eedd2aa63338e1195e573d75ae90db</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static BreakPoint *</type>
      <name>load</name>
      <anchorfile>dc/d26/classbsim_1_1_break_point.html</anchorfile>
      <anchor>ae38e745d6714c668e37bbebbb90644d2</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Breakpoint</name>
    <filename>d4/d26/classbsim_1_1_breakpoint.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::BreakPointListener</name>
    <filename>d3/dc7/classbsim_1_1_break_point_listener.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::BreakPointManager</name>
    <filename>d0/d6b/classbsim_1_1_break_point_manager.html</filename>
    <member kind="function">
      <type>void</type>
      <name>setProgram</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>aa4b9a1a57daac3dc6fa1f2f50356d44f</anchor>
      <arglist>(Program *prog)</arglist>
    </member>
    <member kind="function">
      <type>const QList&lt; BreakPoint * &gt;</type>
      <name>breakPoints</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>a1157f2237e8e74bd5431abacdcf1cb07</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>loadSettings</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>a4790119e3f4bb2770d8b53b6f0650b26</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveSettings</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>a64bbce234dbc54d1e2e1a75f0580d417</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>a30b81e0361ffe83ac753819deee289e5</anchor>
      <arglist>(BreakPoint *bp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>remove</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>afc9f0b386a8627a2d23e609ecf8a46e7</anchor>
      <arglist>(BreakPoint *bp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>enable</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>a1542ef79acf19c118d8feb1cfce86a9c</anchor>
      <arglist>(BreakPoint *bp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disable</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>a36a366a8ca03547a45a3ffa145b8e0ae</anchor>
      <arglist>(BreakPoint *bp)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>breaksAt</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>ad8f6ad1d305b50d260d50092490bf4eb</anchor>
      <arglist>(addr_t addr)</arglist>
    </member>
    <member kind="function">
      <type>BreakPoint *</type>
      <name>breakPointAt</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>a78f3e64f7a68c95c4322e35ab9b5842b</anchor>
      <arglist>(addr_t addr) const </arglist>
    </member>
    <member kind="function">
      <type>BreakPoint *</type>
      <name>breakPointAt</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>ac68ff23a7b63e2f7d0cf73af12df2a91</anchor>
      <arglist>(QString file, int line) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>ac661c38a9f37608913e9c8d5ac9f96ce</anchor>
      <arglist>(BreakPointListener *list)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>remove</name>
      <anchorfile>d0/d6b/classbsim_1_1_break_point_manager.html</anchorfile>
      <anchor>adb97a9da99e7e73c958614a241b5a2ed</anchor>
      <arglist>(BreakPointListener *list)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Scheduler::BreakPointsHandler</name>
    <filename>dd/d05/classbsim_1_1_scheduler_1_1_break_points_handler.html</filename>
    <base>bsim::Scheduler::CompHandler</base>
    <member kind="function">
      <type></type>
      <name>BreakPointsHandler</name>
      <anchorfile>dd/d05/classbsim_1_1_scheduler_1_1_break_points_handler.html</anchorfile>
      <anchor>a83a80f32e4ac958bc8c9e8baa5de57ef</anchor>
      <arglist>(QList&lt; uint32_t &gt; breaks, Handler &amp;next=FOREVER)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>stops</name>
      <anchorfile>dd/d05/classbsim_1_1_scheduler_1_1_break_points_handler.html</anchorfile>
      <anchor>aedbb514c9dd5ed70d53852b3176a48b0</anchor>
      <arglist>(Core *core)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Button</name>
    <filename>d1/dd8/classbsim_1_1_button.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function">
      <type></type>
      <name>Button</name>
      <anchorfile>d1/dd8/classbsim_1_1_button.html</anchorfile>
      <anchor>a66d6b94f1cb0537bbf29e3f90f8cbd72</anchor>
      <arglist>(Board &amp;board, QDomElement conf, QString name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pressed</name>
      <anchorfile>d1/dd8/classbsim_1_1_button.html</anchorfile>
      <anchor>a3b2ea20e77d247f018a3b41a9f474477</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>released</name>
      <anchorfile>d1/dd8/classbsim_1_1_button.html</anchorfile>
      <anchor>a44eac6f9ca13f68f8b5e3772b046737a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>d1/dd8/classbsim_1_1_button.html</anchorfile>
      <anchor>ab7bb762ccf102bf6f4a26f7262acca2a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>d1/dd8/classbsim_1_1_button.html</anchorfile>
      <anchor>ad3557ef646d3ed9f6fbda12176c7f05f</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ButtonItem</name>
    <filename>d0/dbe/classbsim_1_1_button_item.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::CENTEREvent</name>
    <filename>d0/d70/classbsim_1_1_c_e_n_t_e_r_event.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d0/d70/classbsim_1_1_c_e_n_t_e_r_event.html</anchorfile>
      <anchor>a558dd21cc7b4de017cf9552de6da264a</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Character</name>
    <filename>d7/da7/class_character.html</filename>
    <member kind="function">
      <type></type>
      <name>Character</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a3fc36271ca0d68cbea01b27821116b12</anchor>
      <arglist>(quint16 _c= &apos; &apos;, CharacterColor _f=CharacterColor(COLOR_SPACE_DEFAULT, DEFAULT_FORE_COLOR), CharacterColor _b=CharacterColor(COLOR_SPACE_DEFAULT, DEFAULT_BACK_COLOR), quint8 _r=DEFAULT_RENDITION)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isTransparent</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a04995a9c967b4d9012ae3b6f33110568</anchor>
      <arglist>(const ColorEntry *palette) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isBold</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a45ec9d614be686e5ffc5757799728b05</anchor>
      <arglist>(const ColorEntry *base) const </arglist>
    </member>
    <member kind="variable">
      <type>quint16</type>
      <name>character</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a8753a46a13a7dfa2c59cbeb4155c3898</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>quint16</type>
      <name>charSequence</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a58aa110f3cc0d7f5a357331c3436a065</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>quint8</type>
      <name>rendition</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>ac22af41a345795b79b43c4b448eb7dc6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>CharacterColor</type>
      <name>foregroundColor</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a7b4e6bc2d7da73cbfeaa0a5d25bef0f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>CharacterColor</type>
      <name>backgroundColor</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a43e6e14be1a5fb3b905b24a8df04278a</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend">
      <type>friend bool</type>
      <name>operator==</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a78f79427f105f64614c19153609b0677</anchor>
      <arglist>(const Character &amp;a, const Character &amp;b)</arglist>
    </member>
    <member kind="friend">
      <type>friend bool</type>
      <name>operator!=</name>
      <anchorfile>d7/da7/class_character.html</anchorfile>
      <anchor>a64c199e5d246236168c3b499a80fa852</anchor>
      <arglist>(const Character &amp;a, const Character &amp;b)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>CharacterColor</name>
    <filename>d6/d5d/class_character_color.html</filename>
    <member kind="function">
      <type></type>
      <name>CharacterColor</name>
      <anchorfile>d6/d5d/class_character_color.html</anchorfile>
      <anchor>abd8878feb7887624cc504a385cb8b8c2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>CharacterColor</name>
      <anchorfile>d6/d5d/class_character_color.html</anchorfile>
      <anchor>ab7ef0c5a9cf20b84a552146401b38397</anchor>
      <arglist>(quint8 colorSpace, int co)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isValid</name>
      <anchorfile>d6/d5d/class_character_color.html</anchorfile>
      <anchor>a9c34c0c80d6628050f3f2c0e0f5e0749</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toggleIntensive</name>
      <anchorfile>d6/d5d/class_character_color.html</anchorfile>
      <anchor>a5255e6bddacebdb7410dc849ae7b6c2e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QColor</type>
      <name>color</name>
      <anchorfile>d6/d5d/class_character_color.html</anchorfile>
      <anchor>a51ec059caa5511b3d670441bf8ef0a02</anchor>
      <arglist>(const ColorEntry *palette) const </arglist>
    </member>
    <member kind="friend">
      <type>friend bool</type>
      <name>operator==</name>
      <anchorfile>d6/d5d/class_character_color.html</anchorfile>
      <anchor>a31a999bb3ea394bf970388a94cf8eedf</anchor>
      <arglist>(const CharacterColor &amp;a, const CharacterColor &amp;b)</arglist>
    </member>
    <member kind="friend">
      <type>friend bool</type>
      <name>operator!=</name>
      <anchorfile>d6/d5d/class_character_color.html</anchorfile>
      <anchor>ac09763e5e2cb09f85d08bb9466239f2c</anchor>
      <arglist>(const CharacterColor &amp;a, const CharacterColor &amp;b)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>CharCodes</name>
    <filename>df/da0/struct_char_codes.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::CHighlighter</name>
    <filename>da/d2f/classbsim_1_1_c_highlighter.html</filename>
    <base>bsim::Highlighter</base>
  </compound>
  <compound kind="class">
    <name>CleanUpGlobalStatic</name>
    <filename>d6/de7/class_clean_up_global_static.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::CodeViewer</name>
    <filename>d2/db9/classbsim_1_1_code_viewer.html</filename>
    <base>bsim::BreakPointListener</base>
    <member kind="slot">
      <type>void</type>
      <name>highlight</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>ab8eb696ffb9f90e58eddef64f13f6cb9</anchor>
      <arglist>(int id)</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>highlightAddress</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>aed3decd3ee424cd5ab0f29bfe1508318</anchor>
      <arglist>(uint32_t addr)</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>wrap</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a47b1374d0ec0d26f04997927a6a2e38e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>CodeViewer</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a7561a88f73eca4a60d4b6632711ebe73</anchor>
      <arglist>(MainWindow &amp;main_window, QWidget *parent=0)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSource</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a4c23b5a9e92c4f974582a7cb16dcd31a</anchor>
      <arglist>(ISource *source)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearSource</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a25db66c8468576a124bfeb95b552002a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>toogleAddresses</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a9ac477192a042859fae2614503634f62</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>lineNumberAreaPaintEvent</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>ac5544a350fc7d08ad1c21b70baee5c80</anchor>
      <arglist>(QPaintEvent *event)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>lineNumberAreaWidth</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a7387b5e6fed7c4cc9056a086b0f566b7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>breakAreaPaintEvent</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a30479b9dd8925aab9977129f75998626</anchor>
      <arglist>(QPaintEvent *event)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>breakAreaWidth</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>ae1bf060a25ac6f2bffd2bb2e75230c27</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBreaks</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a3626a0cebaae3a99ff7ebbc33df432a5</anchor>
      <arglist>(bool set)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLines</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a64e853b16c9d03e2ab5a37804cbd4858</anchor>
      <arglist>(bool set)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>resizeEvent</name>
      <anchorfile>d2/db9/classbsim_1_1_code_viewer.html</anchorfile>
      <anchor>a766cfe5e50e163e1f7d7dd3e4b9c5fca</anchor>
      <arglist>(QResizeEvent *event)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>ColorEntry</name>
    <filename>de/d16/class_color_entry.html</filename>
    <member kind="function">
      <type></type>
      <name>ColorEntry</name>
      <anchorfile>de/d16/class_color_entry.html</anchorfile>
      <anchor>a3f24a2d250eb151c334a90e5cca84af5</anchor>
      <arglist>(QColor c, bool tr, bool b)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ColorEntry</name>
      <anchorfile>de/d16/class_color_entry.html</anchorfile>
      <anchor>a5a16ed0d4f03c79c5c059c3dad092bf2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator=</name>
      <anchorfile>de/d16/class_color_entry.html</anchorfile>
      <anchor>a662042ca0c320c7d4395b458460df7d4</anchor>
      <arglist>(const ColorEntry &amp;rhs)</arglist>
    </member>
    <member kind="variable">
      <type>QColor</type>
      <name>color</name>
      <anchorfile>de/d16/class_color_entry.html</anchorfile>
      <anchor>acccdbced13effa433ee130a3e68462ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>transparent</name>
      <anchorfile>de/d16/class_color_entry.html</anchorfile>
      <anchor>a887a934d6bd51d637f6d8ce8a54fd5b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>bold</name>
      <anchorfile>de/d16/class_color_entry.html</anchorfile>
      <anchor>a2f11763d356dbd034050f2ece1e9f177</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>RunDriver::CompHandler</name>
    <filename>d7/d6a/class_run_driver_1_1_comp_handler.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::Scheduler::CompHandler</name>
    <filename>d7/d79/classbsim_1_1_scheduler_1_1_comp_handler.html</filename>
    <base>bsim::Scheduler::Handler</base>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>stops</name>
      <anchorfile>d7/d79/classbsim_1_1_scheduler_1_1_comp_handler.html</anchorfile>
      <anchor>a5303fabec87af99f5a813bd1f6531f22</anchor>
      <arglist>(Core *core)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ComponentException</name>
    <filename>d0/d08/classbsim_1_1_component_exception.html</filename>
    <base>bsim::Exception</base>
    <member kind="function">
      <type></type>
      <name>ComponentException</name>
      <anchorfile>d0/d08/classbsim_1_1_component_exception.html</anchorfile>
      <anchor>a15451d53c1564e6fefc078ae969aeb2e</anchor>
      <arglist>(QString name, QString type, QString message=&quot;&quot;)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ComponentNode</name>
    <filename>dd/dec/classbsim_1_1_component_node.html</filename>
    <base>bsim::ParentNode</base>
  </compound>
  <compound kind="class">
    <name>bsim::Configuration</name>
    <filename>d7/dd5/classbsim_1_1_configuration.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>isDefined</name>
      <anchorfile>d7/dd5/classbsim_1_1_configuration.html</anchorfile>
      <anchor>abb5f81dcf0f02ad8d2a99c8abffab8e5</anchor>
      <arglist>(QString name)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>get</name>
      <anchorfile>d7/dd5/classbsim_1_1_configuration.html</anchorfile>
      <anchor>ad2137aa25e456fe127d1765207a105f7</anchor>
      <arglist>(QString name, bool def)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>get</name>
      <anchorfile>d7/dd5/classbsim_1_1_configuration.html</anchorfile>
      <anchor>ac6d2d59835ba1a3ce95825095cbcfbeb</anchor>
      <arglist>(QString name, QString def)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>get</name>
      <anchorfile>d7/dd5/classbsim_1_1_configuration.html</anchorfile>
      <anchor>afc0f8a77a38a407ee548b4f7b5e69d01</anchor>
      <arglist>(QString name, int def)</arglist>
    </member>
    <member kind="function">
      <type>double</type>
      <name>get</name>
      <anchorfile>d7/dd5/classbsim_1_1_configuration.html</anchorfile>
      <anchor>a130f1d43f7ce156b8004a5074041c9bd</anchor>
      <arglist>(QString name, double def)</arglist>
    </member>
    <member kind="function">
      <type>QColor</type>
      <name>get</name>
      <anchorfile>d7/dd5/classbsim_1_1_configuration.html</anchorfile>
      <anchor>a9e2eab07883f4d543fbe9293c0a6d502</anchor>
      <arglist>(QString name, QColor def)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Constant</name>
    <filename>d7/db3/classbsim_1_1_constant.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::ConvertEVT</name>
    <filename>d4/df9/classbsim_1_1_convert_e_v_t.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d4/df9/classbsim_1_1_convert_e_v_t.html</anchorfile>
      <anchor>a0bc31cad6556087da1c3e16de4c1d987</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Core</name>
    <filename>d4/db8/classbsim_1_1_core.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function">
      <type></type>
      <name>Core</name>
      <anchorfile>d4/db8/classbsim_1_1_core.html</anchorfile>
      <anchor>a54b52b5a10e3b1196a54f5660dfcc358</anchor>
      <arglist>(Board &amp;board, QDomElement configuration)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual Program *</type>
      <name>load</name>
      <anchorfile>d4/db8/classbsim_1_1_core.html</anchorfile>
      <anchor>abff6ffcdfe473045060e65918c56b4d5</anchor>
      <arglist>(QString path, IMonitor &amp;mon=IMonitor::def)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>d4/db8/classbsim_1_1_core.html</anchorfile>
      <anchor>a8a70e536fe53f24dfda1493bf5c2ede4</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>d4/db8/classbsim_1_1_core.html</anchorfile>
      <anchor>af1e0ed1f5ba31de4f1927594182eae07</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>step</name>
      <anchorfile>d4/db8/classbsim_1_1_core.html</anchorfile>
      <anchor>ab4b7cea947b864ba433f3f64f207f8be</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual uint32_t</type>
      <name>pc</name>
      <anchorfile>d4/db8/classbsim_1_1_core.html</anchorfile>
      <anchor>aebc91865ac83797bbfef8d7b541b7532</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Core *</type>
      <name>toCore</name>
      <anchorfile>d4/db8/classbsim_1_1_core.html</anchorfile>
      <anchor>a1cb820611abe2e74e8f3a77aa4a117fd</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ADC::CRClass</name>
    <filename>d0/dad/classbsim_1_1_a_d_c_1_1_c_r_class.html</filename>
    <base>bsim::UInt32ControlRegister</base>
  </compound>
  <compound kind="class">
    <name>bsim::CSyntax</name>
    <filename>d5/def/classbsim_1_1_c_syntax.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::CycleView</name>
    <filename>d9/d3e/classbsim_1_1_cycle_view.html</filename>
    <base>bsim::IView</base>
    <member kind="function">
      <type></type>
      <name>CycleView</name>
      <anchorfile>d9/d3e/classbsim_1_1_cycle_view.html</anchorfile>
      <anchor>a346d0b4bedf4fd3cbf2949f5f199a183</anchor>
      <arglist>(MainWindow &amp;window)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onRun</name>
      <anchorfile>d9/d3e/classbsim_1_1_cycle_view.html</anchorfile>
      <anchor>a254c12a75353b5fb5a038f66927d2e53</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBreak</name>
      <anchorfile>d9/d3e/classbsim_1_1_cycle_view.html</anchorfile>
      <anchor>ab75f26eabae147c1a380fb4c75889be4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>update</name>
      <anchorfile>d9/d3e/classbsim_1_1_cycle_view.html</anchorfile>
      <anchor>a19e91c7b2a5c8003be4886ea105c65aa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onStart</name>
      <anchorfile>d9/d3e/classbsim_1_1_cycle_view.html</anchorfile>
      <anchor>a160f92ea2237abd65c5b714d70fb5b73</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onStop</name>
      <anchorfile>d9/d3e/classbsim_1_1_cycle_view.html</anchorfile>
      <anchor>ac8060b6de292013cf8d314d0e2a153af</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const QString</type>
      <name>none</name>
      <anchorfile>d9/d3e/classbsim_1_1_cycle_view.html</anchorfile>
      <anchor>aaf381f0eb9fa960a054ce48a781354ba</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>DECpar</name>
    <filename>d3/d16/struct_d_e_cpar.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::DefaultMonitor</name>
    <filename>dc/dbb/classbsim_1_1_default_monitor.html</filename>
    <base>bsim::IMonitor</base>
    <member kind="function">
      <type>void</type>
      <name>warn</name>
      <anchorfile>dc/dbb/classbsim_1_1_default_monitor.html</anchorfile>
      <anchor>af9f786b09f7188e8f32227b4c4fb0ccd</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>error</name>
      <anchorfile>dc/dbb/classbsim_1_1_default_monitor.html</anchorfile>
      <anchor>a1884e6f26bd7a64a2c4cc907e232c7ed</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>info</name>
      <anchorfile>dc/dbb/classbsim_1_1_default_monitor.html</anchorfile>
      <anchor>aa800e68b846647271e23b79d1d2df095</anchor>
      <arglist>(QString message)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::BitInArray::Delegate</name>
    <filename>d9/d88/classbsim_1_1_bit_in_array_1_1_delegate.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::BitFieldInArray::Delegate</name>
    <filename>da/d36/classbsim_1_1_bit_field_in_array_1_1_delegate.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::BitVector::Delegate</name>
    <filename>db/d71/classbsim_1_1_bit_vector_1_1_delegate.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::DisasmSource</name>
    <filename>d3/df1/classbsim_1_1_disasm_source.html</filename>
    <base>bsim::ISource</base>
    <member kind="function">
      <type></type>
      <name>DisasmSource</name>
      <anchorfile>d3/df1/classbsim_1_1_disasm_source.html</anchorfile>
      <anchor>aca9a060ddad8eda815c49aeb6b7310ba</anchor>
      <arglist>(Program &amp;prog)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>getText</name>
      <anchorfile>d3/df1/classbsim_1_1_disasm_source.html</anchorfile>
      <anchor>a64bbf1b5e900ece0a40f176a97f15d22</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getLine</name>
      <anchorfile>d3/df1/classbsim_1_1_disasm_source.html</anchorfile>
      <anchor>a9a03029444e554676fd50b66507dd00b</anchor>
      <arglist>(uint32_t address)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::DUTYEvent</name>
    <filename>d7/d53/classbsim_1_1_d_u_t_y_event.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d7/d53/classbsim_1_1_d_u_t_y_event.html</anchorfile>
      <anchor>adb86cadfa36536abe6ac2d07d33d6a8c</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Emulation</name>
    <filename>d4/df5/class_emulation.html</filename>
    <member kind="slot" virtualness="virtual">
      <type>virtual void</type>
      <name>setImageSize</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a9aecb1b87b130aa894f97d05b5cd3547</anchor>
      <arglist>(int lines, int columns)</arglist>
    </member>
    <member kind="slot" virtualness="pure">
      <type>virtual void</type>
      <name>sendText</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a74f7bf99daa26c6e309195522ced2782</anchor>
      <arglist>(const QString &amp;text)=0</arglist>
    </member>
    <member kind="slot" virtualness="virtual">
      <type>virtual void</type>
      <name>sendKeyEvent</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a353d4f9f71d096ee3afa781e0c5953d9</anchor>
      <arglist>(QKeyEvent *)</arglist>
    </member>
    <member kind="slot" virtualness="virtual">
      <type>virtual void</type>
      <name>sendMouseEvent</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a14746953ad5c0b0b86a685ba0d0fd565</anchor>
      <arglist>(int buttons, int column, int line, int eventType)</arglist>
    </member>
    <member kind="slot" virtualness="pure">
      <type>virtual void</type>
      <name>sendString</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>afab380e4144f506de40dc98c136bb40f</anchor>
      <arglist>(const char *string, int length=-1)=0</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>receiveData</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a3af97539f7b5fabfb8ca35e2d2fd9571</anchor>
      <arglist>(const char *buffer, int len)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>sendData</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a843294b4ce688e53aaadce0655312818</anchor>
      <arglist>(const char *data, int len)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>lockPtyRequest</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a77234d20ca75276b2eeb8da31482d770</anchor>
      <arglist>(bool suspend)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>useUtf8Request</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a621735c2dab0b912b4d68dc1cee97091</anchor>
      <arglist>(bool)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>stateSet</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>ae128e431cea24d9a0df90bfc46619cda</anchor>
      <arglist>(int state)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>changeTabTextColorRequest</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a70b6c2dd020872a85012e1f106a042b2</anchor>
      <arglist>(int color)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>programUsesMouseChanged</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a3f8a44b3853b82441233e0055c4fce2e</anchor>
      <arglist>(bool usesMouse)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>outputChanged</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>ad646340b13cc4c55b513502b85322e1e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>titleChanged</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a7c69af8d0c3cf11344d4a969f51a3eb7</anchor>
      <arglist>(int title, const QString &amp;newTitle)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>imageSizeChanged</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a8312af995726d52c334b2e5e56aa3836</anchor>
      <arglist>(int lineCount, int columnCount)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>profileChangeCommandReceived</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>ae545ecd1efa183e0dc2d6c32d83efd4b</anchor>
      <arglist>(const QString &amp;text)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Emulation</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a44711b0eb3652a7b812b46c87b8296ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ScreenWindow *</type>
      <name>createWindow</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a6281a56a492e46b453ddde7aa3b1bedb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QSize</type>
      <name>imageSize</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a8f47d1c3ead70a56e743e983851d616b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>lineCount</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a58527f24b660815bca396a7fb9c17b3e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHistory</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>aca5c90d9da4635471a3b2f3e74d5a564</anchor>
      <arglist>(const HistoryType &amp;)</arglist>
    </member>
    <member kind="function">
      <type>const HistoryType &amp;</type>
      <name>history</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a5dccf65be47072a7798d70c341e669d3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearHistory</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>abbe247e455324bac3b214269d7a6d7d8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>writeToStream</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>acfe8ba56ab625bab6549c5c6a7783940</anchor>
      <arglist>(TerminalCharacterDecoder *decoder, int startLine, int endLine)</arglist>
    </member>
    <member kind="function">
      <type>const QTextCodec *</type>
      <name>codec</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a841e63e0cb516299efaab9114c9c3127</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCodec</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>af219eb51ca50b2d44cf31512ec73d094</anchor>
      <arglist>(const QTextCodec *)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>utf8</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>afb27b98ed35c7acb047e857e70b3cbdc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual char</type>
      <name>getErase</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>aa43dc93d24a6e35e659b2dc7fcf33888</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setKeyBindings</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>ac3831da640eb607c4f24d61f1a516616</anchor>
      <arglist>(const QString &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>keyBindings</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a59b54e9bbb818e5cad1de8b450712f9d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>clearEntireScreen</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a89e6537e8dc132525103b391c3960380</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>reset</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>af10891d78ebac8ee36cc0103cdd80db2</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>programUsesMouse</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>ac9e847b6aa9afb0c6b53ee5ef10c93fe</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="slot" protection="protected">
      <type>void</type>
      <name>bufferedUpdate</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a504b7a8027cf1de1bfb633b0ad3ded46</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>receiveChar</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>a06689b9ea7cd4979e4421b9f075b354b</anchor>
      <arglist>(int ch)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setScreen</name>
      <anchorfile>d4/df5/class_emulation.html</anchorfile>
      <anchor>ab19ab494cf826756da83fccb5929eba3</anchor>
      <arglist>(int index)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::EnablePin</name>
    <filename>dc/d15/classbsim_1_1_enable_pin.html</filename>
    <base>bsim::Pin</base>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>dc/d15/classbsim_1_1_enable_pin.html</anchorfile>
      <anchor>ab23bd82aa82f150d893fb120d4c5cccc</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KeyboardTranslator::Entry</name>
    <filename>d7/d78/class_keyboard_translator_1_1_entry.html</filename>
    <member kind="function">
      <type></type>
      <name>Entry</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>afae884140b02e86ff06369c578f254b7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isNull</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a634b4db837bed8751032a99371893d52</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Command</type>
      <name>command</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a80e020347949629af7c0439b8962c793</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCommand</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a7e8c75cde15353b7c7eea85177fad36d</anchor>
      <arglist>(Command command)</arglist>
    </member>
    <member kind="function">
      <type>QByteArray</type>
      <name>text</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>aa70caeaf3192baa4443a736c0f4073d2</anchor>
      <arglist>(bool expandWildCards=false, Qt::KeyboardModifiers modifiers=Qt::NoModifier) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setText</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a33fe54327ea5f67b6652a3fd7dae5847</anchor>
      <arglist>(const QByteArray &amp;text)</arglist>
    </member>
    <member kind="function">
      <type>QByteArray</type>
      <name>escapedText</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>af591a7e5f224132ba393820d89ed2783</anchor>
      <arglist>(bool expandWildCards=false, Qt::KeyboardModifiers modifiers=Qt::NoModifier) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>keyCode</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a1827f295e50163abdc8fee6c7865747b</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setKeyCode</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a4a2f02e310bb433c6d4a265e4f1b6f40</anchor>
      <arglist>(int keyCode)</arglist>
    </member>
    <member kind="function">
      <type>Qt::KeyboardModifiers</type>
      <name>modifiers</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>acd4496a69d376e55d2fecbc112ff954d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Qt::KeyboardModifiers</type>
      <name>modifierMask</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a4f93d63e610a588347418bd4cfb73789</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setModifiers</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a191d2c80d8f9a6995aaaa5433be38e64</anchor>
      <arglist>(Qt::KeyboardModifiers modifiers)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setModifierMask</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>ae9e01f346cb05ebeee3f416fa032bdce</anchor>
      <arglist>(Qt::KeyboardModifiers modifiers)</arglist>
    </member>
    <member kind="function">
      <type>States</type>
      <name>state</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>aff0a2ec6cefc204a50dfe1319df79b4c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>States</type>
      <name>stateMask</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a0513410e56333875a228c5d75ffffe83</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setState</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>aa6202e53f5a334f07dafa31ee9bbd77a</anchor>
      <arglist>(States state)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setStateMask</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>a7cda7b69527faee3395fca1a125d8a82</anchor>
      <arglist>(States mask)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>conditionToString</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>ada2b027af2be1d8b78961876c5026058</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>resultToString</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>af2a77cebe3e56bcad783623ff9c2edd5</anchor>
      <arglist>(bool expandWildCards=false, Qt::KeyboardModifiers modifiers=Qt::NoModifier) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>matches</name>
      <anchorfile>d7/d78/class_keyboard_translator_1_1_entry.html</anchorfile>
      <anchor>afc2fb32bde4900d581e9417c7460d4ce</anchor>
      <arglist>(int keyCode, Qt::KeyboardModifiers modifiers, States flags) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::IRegister::EnumSet</name>
    <filename>dd/dda/classbsim_1_1_i_register_1_1_enum_set.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::IRegister::EnumValue</name>
    <filename>dd/daa/classbsim_1_1_i_register_1_1_enum_value.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::Scheduler::Event</name>
    <filename>d8/d9b/classbsim_1_1_scheduler_1_1_event.html</filename>
    <member kind="function">
      <type></type>
      <name>Event</name>
      <anchorfile>d8/d9b/classbsim_1_1_scheduler_1_1_event.html</anchorfile>
      <anchor>af906c762c768b452e9d4f161b7856d15</anchor>
      <arglist>(Board &amp;board, time_t time=0, QString name=QString::null)</arglist>
    </member>
    <member kind="function">
      <type>Scheduler *</type>
      <name>scheduler</name>
      <anchorfile>d8/d9b/classbsim_1_1_scheduler_1_1_event.html</anchorfile>
      <anchor>aeacba340285c640dc263edeb186a1e03</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>time_t</type>
      <name>time</name>
      <anchorfile>d8/d9b/classbsim_1_1_scheduler_1_1_event.html</anchorfile>
      <anchor>a7d36b9cba3c21074536a1047eefe807b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>run</name>
      <anchorfile>d8/d9b/classbsim_1_1_scheduler_1_1_event.html</anchorfile>
      <anchor>acf76b149c8263839cd5739e498a00af7</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cancel</name>
      <anchorfile>d8/d9b/classbsim_1_1_scheduler_1_1_event.html</anchorfile>
      <anchor>a5735a2f889b65838ab7ca9b7a96e5c82</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reschedule</name>
      <anchorfile>d8/d9b/classbsim_1_1_scheduler_1_1_event.html</anchorfile>
      <anchor>a17126dada4c91bb13b717f055d316556</anchor>
      <arglist>(time_t time)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Exception</name>
    <filename>dc/d3a/classbsim_1_1_exception.html</filename>
  </compound>
  <compound kind="class">
    <name>ExtendedCharTable</name>
    <filename>d5/d65/class_extended_char_table.html</filename>
    <member kind="function">
      <type></type>
      <name>ExtendedCharTable</name>
      <anchorfile>d5/d65/class_extended_char_table.html</anchorfile>
      <anchor>addde2ad3560a173ca76cf14d5814b2f7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ushort</type>
      <name>createExtendedChar</name>
      <anchorfile>d5/d65/class_extended_char_table.html</anchorfile>
      <anchor>aa023fc2c43f55f2aedb9e4c4741884bd</anchor>
      <arglist>(ushort *unicodePoints, ushort length)</arglist>
    </member>
    <member kind="function">
      <type>ushort *</type>
      <name>lookupExtendedChar</name>
      <anchorfile>d5/d65/class_extended_char_table.html</anchorfile>
      <anchor>af6c13cb3380e1f0cba60cac6c17ef971</anchor>
      <arglist>(ushort hash, ushort &amp;length) const </arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static ExtendedCharTable</type>
      <name>instance</name>
      <anchorfile>d5/d65/class_extended_char_table.html</anchorfile>
      <anchor>a382e14b1ea55832c6ebeb5fd19ccfb14</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::IRegister::Field</name>
    <filename>d1/de8/classbsim_1_1_i_register_1_1_field.html</filename>
    <member kind="function">
      <type></type>
      <name>Field</name>
      <anchorfile>d1/de8/classbsim_1_1_i_register_1_1_field.html</anchorfile>
      <anchor>ae71b271f71660c8a527c61b7fdb5d857</anchor>
      <arglist>(IRegister &amp;reg, QString name, int bit)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Field</name>
      <anchorfile>d1/de8/classbsim_1_1_i_register_1_1_field.html</anchorfile>
      <anchor>a2ca66f0b3205cf03b6da0027ab67b7b3</anchor>
      <arglist>(IRegister &amp;reg, QString name, int up, int lo, QVector&lt; EnumValue &gt; *vals=0, field_t type=VAL)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::uint32::FieldRef</name>
    <filename>db/da5/classbsim_1_1uint32_1_1_field_ref.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::FileSource</name>
    <filename>dc/dd6/classbsim_1_1_file_source.html</filename>
    <base>bsim::ISource</base>
    <member kind="function">
      <type></type>
      <name>FileSource</name>
      <anchorfile>dc/dd6/classbsim_1_1_file_source.html</anchorfile>
      <anchor>a4d9a9b7322988c69a89d94d67fc528e3</anchor>
      <arglist>(QString name, Path path, Program &amp;program)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>getText</name>
      <anchorfile>dc/dd6/classbsim_1_1_file_source.html</anchorfile>
      <anchor>a63a9f4c13e2436e5c84ad788b40f7726</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getLine</name>
      <anchorfile>dc/dd6/classbsim_1_1_file_source.html</anchorfile>
      <anchor>afefc9df67a4aef0ec1eecd0c60ab8717</anchor>
      <arglist>(uint32_t address)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Highlighter *</type>
      <name>highlighter</name>
      <anchorfile>dc/dd6/classbsim_1_1_file_source.html</anchorfile>
      <anchor>ab8815af35a58c6e551c7fdf14c599968</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::FileSourceException</name>
    <filename>d4/d3a/classbsim_1_1_file_source_exception.html</filename>
    <base>bsim::Exception</base>
  </compound>
  <compound kind="class">
    <name>Filter</name>
    <filename>d2/d70/class_filter.html</filename>
    <class kind="class">Filter::HotSpot</class>
    <member kind="function">
      <type></type>
      <name>Filter</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>ad15994c30d497afd567a6445446a249e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>process</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>a2f7afde0413c71a3e4947a0537ca8996</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>aea4a28f5eaf6264a5732ed0d6730fa20</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>HotSpot *</type>
      <name>hotSpotAt</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>a13281846196bc9d76ac358ba0228d391</anchor>
      <arglist>(int line, int column) const </arglist>
    </member>
    <member kind="function">
      <type>QList&lt; HotSpot * &gt;</type>
      <name>hotSpots</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>a70686d6dfca66c4b09f430bc1b67af51</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QList&lt; HotSpot * &gt;</type>
      <name>hotSpotsAtLine</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>a560571d349e741f0df2362ea9a09c769</anchor>
      <arglist>(int line) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBuffer</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>a420f3ebb1315292387b3907b1c982b27</anchor>
      <arglist>(const QString *buffer, const QList&lt; int &gt; *linePositions)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>addHotSpot</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>af09de1f71911017b3a4dde11642951fb</anchor>
      <arglist>(HotSpot *)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>const QString *</type>
      <name>buffer</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>a7df74eb6459405c4865d133ffd0494da</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>getLineColumn</name>
      <anchorfile>d2/d70/class_filter.html</anchorfile>
      <anchor>aecd5f30cd8099997654a99e7ae13eb6c</anchor>
      <arglist>(int position, int &amp;startLine, int &amp;startColumn)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>FilterChain</name>
    <filename>d0/d3b/class_filter_chain.html</filename>
    <member kind="function">
      <type>void</type>
      <name>addFilter</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a28d302bad50fb5b50955274b1865fffa</anchor>
      <arglist>(Filter *filter)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeFilter</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a48220357b86dfb6bcc85819119a7dd49</anchor>
      <arglist>(Filter *filter)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>containsFilter</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a0e926a82e24f1e9ecbcf784c5abfe26f</anchor>
      <arglist>(Filter *filter)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>af58f28f365829dbbb39b0abe70a82992</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a4a76babb013010f47a4b145da17bc2c2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>process</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a05b0064354c169597dbb8d7f1b0c710c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBuffer</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>ab3263e0d25a22d1659e56e61e1e73d96</anchor>
      <arglist>(const QString *buffer, const QList&lt; int &gt; *linePositions)</arglist>
    </member>
    <member kind="function">
      <type>Filter::HotSpot *</type>
      <name>hotSpotAt</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a8aa72d52cee45e20937153a06a42a98f</anchor>
      <arglist>(int line, int column) const </arglist>
    </member>
    <member kind="function">
      <type>QList&lt; Filter::HotSpot * &gt;</type>
      <name>hotSpots</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a994b65e01e6f0f2bbb73a1b3be461493</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QList&lt; Filter::HotSpot &gt;</type>
      <name>hotSpotsAtLine</name>
      <anchorfile>d0/d3b/class_filter_chain.html</anchorfile>
      <anchor>a579d33584cd180a5f34cd1dcb611c005</anchor>
      <arglist>(int line) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>FilterObject</name>
    <filename>dd/db1/class_filter_object.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::Scheduler::ForeverHandler</name>
    <filename>d0/d39/classbsim_1_1_scheduler_1_1_forever_handler.html</filename>
    <base>bsim::Scheduler::Handler</base>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>stops</name>
      <anchorfile>d0/d39/classbsim_1_1_scheduler_1_1_forever_handler.html</anchorfile>
      <anchor>a158fe65a6f4dd70ecf886d9cdd7c25a0</anchor>
      <arglist>(Core *core)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array::Getter</name>
    <filename>de/dea/classbsim_1_1_u_int32_array_1_1_getter.html</filename>
    <templarg>T</templarg>
  </compound>
  <compound kind="class">
    <name>bsim::Getter</name>
    <filename>d6/db9/classbsim_1_1_getter.html</filename>
    <templarg>T</templarg>
    <base>bsim::MethodPtr</base>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32::Getter</name>
    <filename>d4/d47/classbsim_1_1_u_int32_1_1_getter.html</filename>
    <templarg>T</templarg>
    <base>bsim::IRegister::AbstractAccessor</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>access</name>
      <anchorfile>d4/d47/classbsim_1_1_u_int32_1_1_getter.html</anchorfile>
      <anchor>a4dcdc7ace37bf4fc26e348e74ed46baa</anchor>
      <arglist>(addr_t a, int s, void *d)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Getter&lt; int32_t &gt;</name>
    <filename>d6/db9/classbsim_1_1_getter.html</filename>
    <base>bsim::MethodPtr</base>
  </compound>
  <compound kind="class">
    <name>bsim::GetterImpl</name>
    <filename>dd/d9d/classbsim_1_1_getter_impl.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>bsim::Getter</base>
  </compound>
  <compound kind="class">
    <name>bsim::GetterImplWithSoftIO</name>
    <filename>dd/d21/classbsim_1_1_getter_impl_with_soft_i_o.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>bsim::Getter</base>
  </compound>
  <compound kind="class">
    <name>bsim::Scheduler::Handler</name>
    <filename>d3/d9a/classbsim_1_1_scheduler_1_1_handler.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>stops</name>
      <anchorfile>d3/d9a/classbsim_1_1_scheduler_1_1_handler.html</anchorfile>
      <anchor>ab994e3866af12f42bb690a0ffc8e1b00</anchor>
      <arglist>(Core *core)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::HardRegister32</name>
    <filename>d5/d5a/classbsim_1_1_hard_register32.html</filename>
    <base>bsim::IHardRegister</base>
    <class kind="class">bsim::HardRegister32::Maker</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>set</name>
      <anchorfile>d5/d5a/classbsim_1_1_hard_register32.html</anchorfile>
      <anchor>a265dfb001471f52e6fc3995587f4cf90</anchor>
      <arglist>(QVariant value, int i=0)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>read</name>
      <anchorfile>d5/d5a/classbsim_1_1_hard_register32.html</anchorfile>
      <anchor>a2c68f7fa6d106c0c981fdb84fe054db2</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>write</name>
      <anchorfile>d5/d5a/classbsim_1_1_hard_register32.html</anchorfile>
      <anchor>a8ab33081c2f10c48d47416e3e5b9a494</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setGetter</name>
      <anchorfile>d5/d5a/classbsim_1_1_hard_register32.html</anchorfile>
      <anchor>a3f9b7371aaf3dd1b1c5269f8873d1274</anchor>
      <arglist>(Getter&lt; int32_t &gt; *getter)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSetter</name>
      <anchorfile>d5/d5a/classbsim_1_1_hard_register32.html</anchorfile>
      <anchor>ac8c2176b3cc3da7c418fcedcb858508b</anchor>
      <arglist>(Setter&lt; int32_t &gt; *setter)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>HardRegister32</name>
      <anchorfile>d5/d5a/classbsim_1_1_hard_register32.html</anchorfile>
      <anchor>a4c38899e615b6d1b3636b40caef81cb5</anchor>
      <arglist>(Board &amp;board)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::HardRegister32WithSoftIO</name>
    <filename>d7/d3c/classbsim_1_1_hard_register32_with_soft_i_o.html</filename>
    <base>bsim::HardRegister32</base>
    <class kind="class">bsim::HardRegister32WithSoftIO::Maker</class>
    <member kind="function" protection="protected">
      <type></type>
      <name>HardRegister32WithSoftIO</name>
      <anchorfile>d7/d3c/classbsim_1_1_hard_register32_with_soft_i_o.html</anchorfile>
      <anchor>afbf806859dd2fa23cf2602307295370c</anchor>
      <arglist>(Board &amp;board)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Highlighter</name>
    <filename>dc/d05/classbsim_1_1_highlighter.html</filename>
    <member kind="function">
      <type></type>
      <name>Highlighter</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>a59bcbb045fc68518e910d619563e9745</anchor>
      <arglist>(QString name)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>name</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>ab3797bd0b25ead426fde1f79d4fb76b3</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>count</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>a3b10a34f77caca6e8ca7e061af6d000f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>TokenStyle *</type>
      <name>style</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>ab153c64d4dae68f946f1a590b36a38f3</anchor>
      <arglist>(int i) const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>registerForExt</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>a52008ff2a09f098ce5153748cb8c63aa</anchor>
      <arglist>(QString ext, Highlighter *highlighter)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>unregisterForExt</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>a619bf71f70d99f0131d3d295a04c4c00</anchor>
      <arglist>(QString ext)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static Highlighter *</type>
      <name>getForExt</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>afb817fe53f8b7da4c72f8d3df1f6aa2e</anchor>
      <arglist>(QString ext)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>add</name>
      <anchorfile>dc/d05/classbsim_1_1_highlighter.html</anchorfile>
      <anchor>aa4db39d9ef24f42231de8a11658ffb81</anchor>
      <arglist>(TokenStyle *style)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>HistoryFile</name>
    <filename>d6/d20/class_history_file.html</filename>
  </compound>
  <compound kind="class">
    <name>HistoryScroll</name>
    <filename>da/d2b/class_history_scroll.html</filename>
  </compound>
  <compound kind="class">
    <name>HistoryScrollBlockArray</name>
    <filename>d0/d08/class_history_scroll_block_array.html</filename>
    <base>HistoryScroll</base>
  </compound>
  <compound kind="class">
    <name>HistoryScrollBuffer</name>
    <filename>da/db5/class_history_scroll_buffer.html</filename>
    <base>HistoryScroll</base>
  </compound>
  <compound kind="class">
    <name>HistoryScrollFile</name>
    <filename>dd/d53/class_history_scroll_file.html</filename>
    <base>HistoryScroll</base>
  </compound>
  <compound kind="class">
    <name>HistoryScrollNone</name>
    <filename>da/dbe/class_history_scroll_none.html</filename>
    <base>HistoryScroll</base>
  </compound>
  <compound kind="class">
    <name>HistoryType</name>
    <filename>d9/de0/class_history_type.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>isEnabled</name>
      <anchorfile>d9/de0/class_history_type.html</anchorfile>
      <anchor>a0b9c7e2c8f3b99209ccf1e5df5280397</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isUnlimited</name>
      <anchorfile>d9/de0/class_history_type.html</anchorfile>
      <anchor>a68c0e8f13970e85de83b12da362700a2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>maximumLineCount</name>
      <anchorfile>d9/de0/class_history_type.html</anchorfile>
      <anchor>aa987a88e486a548d732f9f610673e766</anchor>
      <arglist>() const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>HistoryTypeBlockArray</name>
    <filename>d5/db9/class_history_type_block_array.html</filename>
    <base>HistoryType</base>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEnabled</name>
      <anchorfile>d5/db9/class_history_type_block_array.html</anchorfile>
      <anchor>a72ac3a8ce7555a9dd171d623ad2d1e88</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maximumLineCount</name>
      <anchorfile>d5/db9/class_history_type_block_array.html</anchorfile>
      <anchor>a4b98a5fab7769714ee8113a7d83d3a8e</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>HistoryTypeBuffer</name>
    <filename>d5/d7f/class_history_type_buffer.html</filename>
    <base>HistoryType</base>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEnabled</name>
      <anchorfile>d5/d7f/class_history_type_buffer.html</anchorfile>
      <anchor>a7440807664fb39f3cd5efedecd3b72ed</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maximumLineCount</name>
      <anchorfile>d5/d7f/class_history_type_buffer.html</anchorfile>
      <anchor>acdcb716df9142aed7d14a8f759ab9d64</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>HistoryTypeFile</name>
    <filename>dc/da4/class_history_type_file.html</filename>
    <base>HistoryType</base>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEnabled</name>
      <anchorfile>dc/da4/class_history_type_file.html</anchorfile>
      <anchor>a83ed6258dc7f26163b0ba7a3b8f0b8f9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maximumLineCount</name>
      <anchorfile>dc/da4/class_history_type_file.html</anchorfile>
      <anchor>af985b92830dc95f020cb5a4d8f1ef006</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>HistoryTypeNone</name>
    <filename>d5/df7/class_history_type_none.html</filename>
    <base>HistoryType</base>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>isEnabled</name>
      <anchorfile>d5/df7/class_history_type_none.html</anchorfile>
      <anchor>a9ee01cb13ae603cf320727b053cb4290</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>maximumLineCount</name>
      <anchorfile>d5/df7/class_history_type_none.html</anchorfile>
      <anchor>aa00e26d1069566d2518bfd72e18f3e1f</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Filter::HotSpot</name>
    <filename>d8/dd2/class_filter_1_1_hot_spot.html</filename>
    <member kind="function">
      <type></type>
      <name>HotSpot</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>ae193622e60f32df14aadd735c5350583</anchor>
      <arglist>(int startLine, int startColumn, int endLine, int endColumn)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>startLine</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a73dccdaaf7bf712559f8e8d6c15a4c57</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>endLine</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a31326b828cc77f350db997cfa5950281</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>startColumn</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a4779276c7212c01cae31adbf93582605</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>endColumn</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a085e2ea7778d977cdcfcf3c21e327d73</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Type</type>
      <name>type</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>ad0553bd14748bc9a1a0754b3930c43c0</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>activate</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a5d6f3f29588cc2b53d2299b059dd9dad</anchor>
      <arglist>(QObject *object=0)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QList&lt; QAction * &gt;</type>
      <name>actions</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a9d00bbdd8141d565e43f509c9ae726da</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>tooltip</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a33933f85c21e58ace73f72109c8e74d8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setType</name>
      <anchorfile>d8/dd2/class_filter_1_1_hot_spot.html</anchorfile>
      <anchor>aa1302946d8fb44218c92627edb5aac69</anchor>
      <arglist>(Type type)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>RegExpFilter::HotSpot</name>
    <filename>d9/d77/class_reg_exp_filter_1_1_hot_spot.html</filename>
    <base>Filter::HotSpot</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>activate</name>
      <anchorfile>d9/d77/class_reg_exp_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a4a2f98c075d7629106b1ddc35e07da83</anchor>
      <arglist>(QObject *object=0)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCapturedTexts</name>
      <anchorfile>d9/d77/class_reg_exp_filter_1_1_hot_spot.html</anchorfile>
      <anchor>af96013d9f624359765f85e082678e053</anchor>
      <arglist>(const QStringList &amp;texts)</arglist>
    </member>
    <member kind="function">
      <type>QStringList</type>
      <name>capturedTexts</name>
      <anchorfile>d9/d77/class_reg_exp_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a9ae2b1f4f56261c5f9c5981ee0780089</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>UrlFilter::HotSpot</name>
    <filename>d6/d84/class_url_filter_1_1_hot_spot.html</filename>
    <base>RegExpFilter::HotSpot</base>
    <member kind="function" virtualness="virtual">
      <type>virtual QList&lt; QAction * &gt;</type>
      <name>actions</name>
      <anchorfile>d6/d84/class_url_filter_1_1_hot_spot.html</anchorfile>
      <anchor>af04fc9ba76a4a630abeddb81e304c89a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>activate</name>
      <anchorfile>d6/d84/class_url_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a8ef5faf2c3e1b0e82af8d79e5df26861</anchor>
      <arglist>(QObject *object=0)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>tooltip</name>
      <anchorfile>d6/d84/class_url_filter_1_1_hot_spot.html</anchorfile>
      <anchor>a6d1b2d6c0f5413013f5d04013a680491</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>HTMLDecoder</name>
    <filename>d1/dad/class_h_t_m_l_decoder.html</filename>
    <base>TerminalCharacterDecoder</base>
    <member kind="function">
      <type></type>
      <name>HTMLDecoder</name>
      <anchorfile>d1/dad/class_h_t_m_l_decoder.html</anchorfile>
      <anchor>a3e3aa320252b301c19c8c801c72b4fc6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setColorTable</name>
      <anchorfile>d1/dad/class_h_t_m_l_decoder.html</anchorfile>
      <anchor>af5491d192f7790e30ba46f05dd21a879</anchor>
      <arglist>(const ColorEntry *table)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>decodeLine</name>
      <anchorfile>d1/dad/class_h_t_m_l_decoder.html</anchorfile>
      <anchor>af4e81e6afaeadf19e9b7968ae039c0f4</anchor>
      <arglist>(const Character *const characters, int count, LineProperty properties)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>begin</name>
      <anchorfile>d1/dad/class_h_t_m_l_decoder.html</anchorfile>
      <anchor>afceac516f349d6e1336ce58096db39bb</anchor>
      <arglist>(QTextStream *output)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>end</name>
      <anchorfile>d1/dad/class_h_t_m_l_decoder.html</anchorfile>
      <anchor>a8f983f960e6942dce644871602a83410</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::IComponent</name>
    <filename>d8/dc7/classbsim_1_1_i_component.html</filename>
    <member kind="function">
      <type></type>
      <name>IComponent</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>aaa3a19952d505b7e75264c140749307d</anchor>
      <arglist>(Board &amp;board, QDomElement configuration, IMonitor &amp;monitor=IMonitor::def)</arglist>
    </member>
    <member kind="function">
      <type>const QVector&lt; Pin * &gt; &amp;</type>
      <name>pins</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a206809febaf06abe71edc0817af26902</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>Pin *</type>
      <name>getPin</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a44e6186f44b058af1c5a8986ec792089</anchor>
      <arglist>(QString name)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>name</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a439537193e9763dac253fda7698a437b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>namePrefix</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a8fd21f1704296dbe2e2a0bb8c7a0527c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>typePrefix</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>afcf3678caf5682c7840efe78cf1c0744</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a5a939616cdc57000292fc25bb352bd98</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a44adc196652516156413009067c9c24d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>displayed</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>ac3623e13398e0483346658bbba450c1e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getStaticConstants</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>aeb995f53525c28a34f88f3a492e93791</anchor>
      <arglist>(QVector&lt; Constant &gt; &amp;csts) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getDynamicConstants</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a7c2da0c6f62220ca4d2bcadc1a77800b</anchor>
      <arglist>(QVector&lt; Constant &gt; &amp;csts) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Core *</type>
      <name>toCore</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a6fc59a30444ce9253eac379525fb308a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>ae71eb52694057e72d535fd7e3949eb41</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>genHeader</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a29b9aa7d6df3f476fdc82f5076862817</anchor>
      <arglist>(lang_t lang, QTextStream &amp;out)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>configure</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>af6948004a31158c18897de202bc09934</anchor>
      <arglist>(Configuration &amp;conf, IMonitor &amp;monitor=IMonitor::def)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>install</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a2cf0f6740a94cb585a90ae6cccd01027</anchor>
      <arglist>(QGraphicsScene &amp;scene)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>uninstall</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>aff279c0d6e5a210699e80fca1eaed506</anchor>
      <arglist>(QGraphicsScene &amp;scene)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>installUI</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>ab288f3a69d22d4f43ae91b359052eb02</anchor>
      <arglist>(MainWindow &amp;window)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>uninstallUI</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a9334c84a19852c388fb99ab84812690c</anchor>
      <arglist>(MainWindow &amp;window)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>genHeader</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>aafade70068f330b7eac640ac5cbaa5af</anchor>
      <arglist>(QTextStream &amp;out)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>configure</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>aa10185aa4e41855a4e8a4cfe0a55efe8</anchor>
      <arglist>(QDomElement dom)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>configureLink</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a8c7fd7147b4a0fae8b686946e7b3a7cc</anchor>
      <arglist>(QDomElement element)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>configureOther</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a17b1734443f2fce935242bff04df2fdc</anchor>
      <arglist>(QDomElement element)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>add</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>adedb4e645ed099bc4c409c48d315e3cd</anchor>
      <arglist>(Pin *pin)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>add</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a0281b4cbecb5203c2b21136dcaa37df9</anchor>
      <arglist>(IRegister *reg)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>time_t</type>
      <name>time</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>aca4ab0eeda4556f13f658ec8e354d3f2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>warn</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>aac8ea0dd73f27fd8ed642177fda890b8</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>error</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a0a7919d4a179ab6f31d22069417e3788</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>info</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a31beadf87cee62317f8b7fcd28484f12</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>QTextStream &amp;</type>
      <name>log</name>
      <anchorfile>d8/dc7/classbsim_1_1_i_component.html</anchorfile>
      <anchor>a15b641ad511dd97b66e62078f9682ed6</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::IHardRegister</name>
    <filename>df/dd7/classbsim_1_1_i_hard_register.html</filename>
    <base>bsim::IRegister</base>
    <class kind="class">bsim::IHardRegister::Make</class>
    <class kind="class">bsim::IHardRegister::Maker</class>
    <member kind="function">
      <type></type>
      <name>IHardRegister</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>a06c0f5d37cf1cf3660c91dd1083fcc67</anchor>
      <arglist>(IComponent *comp, const Make &amp;make)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>address</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>aecebc522c2ecffc449e80f28c468dd9c</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>read</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>a5f87892a4750935d6de0703f5cea2f20</anchor>
      <arglist>(addr_t addr, void *data, int size)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>write</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>a9da8266486c7c88f92e02c958cb067ca</anchor>
      <arglist>(addr_t addr, void *data, int size)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>name</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>aaf121bdee6e41bd5af4e6efa655a919a</anchor>
      <arglist>(int i=-1)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>count</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>ac9a10e03a669b999420333fce57ef782</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>size</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>a896bf254530e1b0c44bcc716e3560bc0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>type</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>a92e75c76c19801b585a87bb1b0fa0eea</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>access</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>a039afb61f5e6db90d9fd4db1a6575003</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual IHardRegister *</type>
      <name>toHard</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>a311172cf9e7789441c2bddc1e7cdcbdf</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual ICoreRegister *</type>
      <name>toCore</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>aeb4b0f288d8a10a897ef3084a54d13fc</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>IHardRegister</name>
      <anchorfile>df/dd7/classbsim_1_1_i_hard_register.html</anchorfile>
      <anchor>adbeefe59cd2c0535b1f82086ab27bfab</anchor>
      <arglist>(Board &amp;board, int count=1)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::IMonitor</name>
    <filename>d9/de4/classbsim_1_1_i_monitor.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>warn</name>
      <anchorfile>d9/de4/classbsim_1_1_i_monitor.html</anchorfile>
      <anchor>ae2545bd0de0111ed8bfbff72aef08b41</anchor>
      <arglist>(QString message)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>error</name>
      <anchorfile>d9/de4/classbsim_1_1_i_monitor.html</anchorfile>
      <anchor>a119aa1f6338af8f1a155a714b7656002</anchor>
      <arglist>(QString message)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>info</name>
      <anchorfile>d9/de4/classbsim_1_1_i_monitor.html</anchorfile>
      <anchor>ad0c65118cc89b942eea3cd4672a94efa</anchor>
      <arglist>(QString message)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::IndexedRegister</name>
    <filename>da/d4c/classbsim_1_1_indexed_register.html</filename>
    <base>bsim::HardRegister32</base>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>qualifiedName</name>
      <anchorfile>da/d4c/classbsim_1_1_indexed_register.html</anchorfile>
      <anchor>a4ceaf9edda8a4603ef3e99c818f00558</anchor>
      <arglist>(IComponent *component, int i)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>displayName</name>
      <anchorfile>da/d4c/classbsim_1_1_indexed_register.html</anchorfile>
      <anchor>af21438a24af058cc726f01533450ae8f</anchor>
      <arglist>(int i)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::inPin</name>
    <filename>d7/d93/classbsim_1_1in_pin.html</filename>
    <base>bsim::SerialPin</base>
    <base>bsim::Pin</base>
    <base>bsim::Pin</base>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>d7/d93/classbsim_1_1in_pin.html</anchorfile>
      <anchor>a4b74303925375d8711301f6493a17810</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>receiveAnalog</name>
      <anchorfile>d7/d93/classbsim_1_1in_pin.html</anchorfile>
      <anchor>a870229a8717888150ad982f828a72d96</anchor>
      <arglist>(uint64_t time, double volt)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>d7/d93/classbsim_1_1in_pin.html</anchorfile>
      <anchor>a4b74303925375d8711301f6493a17810</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>d7/d93/classbsim_1_1in_pin.html</anchorfile>
      <anchor>a4b74303925375d8711301f6493a17810</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onConfigure</name>
      <anchorfile>d7/d93/classbsim_1_1in_pin.html</anchorfile>
      <anchor>a3b2d2eed4b5522c4d2124c751070538d</anchor>
      <arglist>(uint64_t time, const config_t &amp;configuration)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onWord</name>
      <anchorfile>d7/d93/classbsim_1_1in_pin.html</anchorfile>
      <anchor>ad1723e76b7c6cb2c9ffe523b489b0803</anchor>
      <arglist>(uint64_t time, uint32_t word)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onError</name>
      <anchorfile>d7/d93/classbsim_1_1in_pin.html</anchorfile>
      <anchor>adcb48acef606140cc9ec14b696cf874e</anchor>
      <arglist>(uint64_t time, QString id)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interfaceComponent::InterfaceComponent</name>
    <filename>d2/d5c/classinterface_component_1_1_interface_component.html</filename>
  </compound>
  <compound kind="struct">
    <name>interval</name>
    <filename>d5/d1a/structinterval.html</filename>
  </compound>
  <compound kind="class">
    <name>InvalidCallbackException</name>
    <filename>d4/d87/class_invalid_callback_exception.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::IPIOConnected</name>
    <filename>db/d95/classbsim_1_1_i_p_i_o_connected.html</filename>
    <base>bsim::IComponent</base>
  </compound>
  <compound kind="class">
    <name>bsim::IRegister</name>
    <filename>d8/d69/classbsim_1_1_i_register.html</filename>
    <class kind="class">bsim::IRegister::AbstractAccessor</class>
    <class kind="class">bsim::IRegister::EnumSet</class>
    <class kind="class">bsim::IRegister::EnumValue</class>
    <class kind="class">bsim::IRegister::Field</class>
    <member kind="function" virtualness="pure">
      <type>virtual QString</type>
      <name>name</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a453b9b1e72e96134ee0f49eb315f96fb</anchor>
      <arglist>(int i=-1)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>qualifiedName</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a660556e529dc946434c3345a622b57f7</anchor>
      <arglist>(IComponent *component, int i=-1)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>displayName</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a4500caaec1d97b7f1f7390fccea5c680</anchor>
      <arglist>(int i=-1)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>count</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>ae7b5db96846e37ccaf2f883b3c4fbcf8</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>size</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a69b69166bec6193625c6b1caf924249c</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>type</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a127ab7f0ffe78c5e1f6cb0194c4c4269</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>set</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>ae4c77180a8a28211ce258e2b82107695</anchor>
      <arglist>(QVariant value, int i=0)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>access</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a50aecda802cb7473c56a061c8fda4af4</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isReadable</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>aaab5452cd2037ab533583284dd874502</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isWritable</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a9b06e731c196ce8c970b08dea4aea863</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isReadWrite</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>ad6ece30021959b00b0f7476ada7c2851</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isOnlyReadable</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a63e9841c3e68118a352ceb7c77a6a2da</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isOnlyWritable</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a01c5f6735381746849f1bc4015cd62bd</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual IHardRegister *</type>
      <name>toHard</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a1afcb8f2255079ae8701a16281411c54</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual ICoreRegister *</type>
      <name>toCore</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a6313391b0a94813770c938bf99147175</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>format</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a26c7c2151812de256f3626f271fc027c</anchor>
      <arglist>(int i=0, int fmt=DEF)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>NONE</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a158e282d589e9ef1506c9e5c53ea63f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>INT</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>aabffaf57be917501ca86cc45f9c3ac92</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>BITS</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a613bde4e245fa275d71f3bb8b18e557b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>ADDR</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a80a9fa4ea46a63cc9b4fcd29d1cb25db</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>FLOAT</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a9e89cd18cf0386672488e49de5e73688</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>READ</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a20e73c65ef3a0457dfe8cb07e09962a8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>WRITE</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>af74c1d2d63cfe806000f45c826000cd1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const int</type>
      <name>BOTH</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a799d87a1bfadd35e835d8eac15fb4df3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static EnumSet</type>
      <name>_</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a466c9ce81ed44d67c1868da3df66b97e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static AbstractAccessor</type>
      <name>null_accessor</name>
      <anchorfile>d8/d69/classbsim_1_1_i_register.html</anchorfile>
      <anchor>a60b2d158b4da9edb2f7504f3ee63e020</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ISource</name>
    <filename>d3/d8e/classbsim_1_1_i_source.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual QString</type>
      <name>getText</name>
      <anchorfile>d3/d8e/classbsim_1_1_i_source.html</anchorfile>
      <anchor>acce3b767304a73d6e44eb2abc3a897a5</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual int</type>
      <name>getLine</name>
      <anchorfile>d3/d8e/classbsim_1_1_i_source.html</anchorfile>
      <anchor>a9c667d1c82ed5747ba89f19e310d6b28</anchor>
      <arglist>(uint32_t address)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual Highlighter *</type>
      <name>highlighter</name>
      <anchorfile>d3/d8e/classbsim_1_1_i_source.html</anchorfile>
      <anchor>af5ba46d6ecf0072e0bca4af0ad030f16</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::IView</name>
    <filename>d8/dae/classbsim_1_1_i_view.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onClear</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>a26c63bb52a53f0fcae177810b5053fa8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBoardLoad</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>a29d1db28e042cf705cfb034723de64f2</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onExecLoad</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>ad2f5af696482b77359b9a4f0d18d1251</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>loadSettings</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>aac8d65a5f76817487c7a655772983600</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>saveSettings</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>a72f68fae3239a9c9120419fae19a5cd0</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onStart</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>a79bec32ad26e6e21badd1b7dca225036</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onRun</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>a8e21c91acc4b263fe42b0a1bf0760e69</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBreak</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>a74270f6543dccbef44fed41f617418c3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>update</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>acebf8a881aaa0f4eef995c45644a9451</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onStop</name>
      <anchorfile>d8/dae/classbsim_1_1_i_view.html</anchorfile>
      <anchor>a6bc765193afddf6cbe5ae0c1211654cd</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KeyboardTranslator</name>
    <filename>d4/d90/class_keyboard_translator.html</filename>
    <class kind="class">KeyboardTranslator::Entry</class>
    <member kind="enumeration">
      <type></type>
      <name>State</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fa5011edfcf40ccb464229843a03bc184d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NewLineState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fa21b3f0300280c5ddde9021b8dfe1ec68</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>AnsiState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fac701bb9e493a418d14c0fbd3676e0a45</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CursorKeysState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fad7ed19bfe42d832a8b1896700f4274bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>AlternateScreenState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fad49e79e6171c017d814db43cee294109</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>AnyModifierState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fa5c4901a06ca4ab470599ed00c3cb015c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>Command</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa7448dd638d8a9f06e5263cb1609367f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SendCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa58489aef065e2131c62a23dbbc69d058</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollPageUpCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa594a9feadb93145394d52d7bbab54ed0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollPageDownCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa72efa5e7fbd614565cfb6daae3aa6c07</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollLineUpCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa28754ab31005c14552c5b9d0d5f2ac6d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollLineDownCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aae4830df5a9c4c10b5e57e942f2eab178</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollLockCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa792ffbbb80d9514c817d417d0ac06c40</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EraseCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa491dd10a9401ec2303fc136bc98bd25b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fa5011edfcf40ccb464229843a03bc184d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NewLineState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fa21b3f0300280c5ddde9021b8dfe1ec68</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>AnsiState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fac701bb9e493a418d14c0fbd3676e0a45</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CursorKeysState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fad7ed19bfe42d832a8b1896700f4274bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>AlternateScreenState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fad49e79e6171c017d814db43cee294109</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>AnyModifierState</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a171a8868161ade914ea6d39f82dbc65fa5c4901a06ca4ab470599ed00c3cb015c</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa7448dd638d8a9f06e5263cb1609367f9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SendCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa58489aef065e2131c62a23dbbc69d058</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollPageUpCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa594a9feadb93145394d52d7bbab54ed0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollPageDownCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa72efa5e7fbd614565cfb6daae3aa6c07</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollLineUpCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa28754ab31005c14552c5b9d0d5f2ac6d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollLineDownCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aae4830df5a9c4c10b5e57e942f2eab178</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollLockCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa792ffbbb80d9514c817d417d0ac06c40</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>EraseCommand</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a5e4ad404040a2ef8a7afdc1c8c34099aa491dd10a9401ec2303fc136bc98bd25b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>KeyboardTranslator</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>ad19ed2f49455cde79ea50d7aa4428ffd</anchor>
      <arglist>(const QString &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>name</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a66c9871fcbe7336b947c5a21fa829967</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setName</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a6f1065f3de46027d6f1ed7242a7fe6c1</anchor>
      <arglist>(const QString &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>description</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>ad25b6c90c0782d6e869aa73515a6b2b4</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDescription</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>ad3f3ef812b5d33e3723b23a94f6abae0</anchor>
      <arglist>(const QString &amp;description)</arglist>
    </member>
    <member kind="function">
      <type>Entry</type>
      <name>findEntry</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>af58709bd50ac084ff84400b6ba4531bb</anchor>
      <arglist>(int keyCode, Qt::KeyboardModifiers modifiers, States state=NoState) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addEntry</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>aece8abe39d4768296add9984c63fd841</anchor>
      <arglist>(const Entry &amp;entry)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>replaceEntry</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a6c91f1a7b4af0eee5d34b2154b7c3ae5</anchor>
      <arglist>(const Entry &amp;existing, const Entry &amp;replacement)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeEntry</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>af8bf2f9826adac9f20ba6cc04d5b6f97</anchor>
      <arglist>(const Entry &amp;entry)</arglist>
    </member>
    <member kind="function">
      <type>QList&lt; Entry &gt;</type>
      <name>entries</name>
      <anchorfile>d4/d90/class_keyboard_translator.html</anchorfile>
      <anchor>a4514dbc1f73a269821acef07e4cc1e84</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KeyboardTranslatorManager</name>
    <filename>d9/dbd/class_keyboard_translator_manager.html</filename>
    <member kind="function">
      <type></type>
      <name>KeyboardTranslatorManager</name>
      <anchorfile>d9/dbd/class_keyboard_translator_manager.html</anchorfile>
      <anchor>a00d6a8b398fc0c1eb6a8f16f48d94956</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addTranslator</name>
      <anchorfile>d9/dbd/class_keyboard_translator_manager.html</anchorfile>
      <anchor>a9ccfdbd8a2aa22faaf7bab3b2d8f55e7</anchor>
      <arglist>(KeyboardTranslator *translator)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteTranslator</name>
      <anchorfile>d9/dbd/class_keyboard_translator_manager.html</anchorfile>
      <anchor>ac291525500fac5e5023da0295648f1bf</anchor>
      <arglist>(const QString &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>const KeyboardTranslator *</type>
      <name>defaultTranslator</name>
      <anchorfile>d9/dbd/class_keyboard_translator_manager.html</anchorfile>
      <anchor>a097d50a836c9c434e1fc6b220b463f4c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const KeyboardTranslator *</type>
      <name>findTranslator</name>
      <anchorfile>d9/dbd/class_keyboard_translator_manager.html</anchorfile>
      <anchor>a9172df3a8ca955986917b9ba59e71228</anchor>
      <arglist>(const QString &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QList&lt; QString &gt;</type>
      <name>allTranslators</name>
      <anchorfile>d9/dbd/class_keyboard_translator_manager.html</anchorfile>
      <anchor>a2f3b7f0f297feb0ea6bf5868002364da</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static KeyboardTranslatorManager *</type>
      <name>instance</name>
      <anchorfile>d9/dbd/class_keyboard_translator_manager.html</anchorfile>
      <anchor>acf803d80af3a52bd72e45b89ffbe1457</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KeyboardTranslatorReader</name>
    <filename>dd/d39/class_keyboard_translator_reader.html</filename>
    <member kind="function">
      <type></type>
      <name>KeyboardTranslatorReader</name>
      <anchorfile>dd/d39/class_keyboard_translator_reader.html</anchorfile>
      <anchor>a1b6e2b69eddf7f2bb94ff18b484dd7e0</anchor>
      <arglist>(QIODevice *source)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>description</name>
      <anchorfile>dd/d39/class_keyboard_translator_reader.html</anchorfile>
      <anchor>a548d7e3557708bdb91d3cf1045383e75</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasNextEntry</name>
      <anchorfile>dd/d39/class_keyboard_translator_reader.html</anchorfile>
      <anchor>aeb4775ee3d02d39e71c7886bc5e02bc9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>KeyboardTranslator::Entry</type>
      <name>nextEntry</name>
      <anchorfile>dd/d39/class_keyboard_translator_reader.html</anchorfile>
      <anchor>aebb984940208ea72324684f369f5568f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>parseError</name>
      <anchorfile>dd/d39/class_keyboard_translator_reader.html</anchorfile>
      <anchor>a63412a1b7f4d7cda8bdf83f252265b9d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static KeyboardTranslator::Entry</type>
      <name>createEntry</name>
      <anchorfile>dd/d39/class_keyboard_translator_reader.html</anchorfile>
      <anchor>a0cf6f7bcadcadcf14bdec3cf1455d3b2</anchor>
      <arglist>(const QString &amp;condition, const QString &amp;result)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KeyboardTranslatorWriter</name>
    <filename>d7/d3c/class_keyboard_translator_writer.html</filename>
    <member kind="function">
      <type></type>
      <name>KeyboardTranslatorWriter</name>
      <anchorfile>d7/d3c/class_keyboard_translator_writer.html</anchorfile>
      <anchor>af98a3661116e49c4651db28b97122f36</anchor>
      <arglist>(QIODevice *destination)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeHeader</name>
      <anchorfile>d7/d3c/class_keyboard_translator_writer.html</anchorfile>
      <anchor>a8d5df9bcf5ccacff5238e233630581cb</anchor>
      <arglist>(const QString &amp;description)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeEntry</name>
      <anchorfile>d7/d3c/class_keyboard_translator_writer.html</anchorfile>
      <anchor>ae5ca97ebb51bbd0955cca9b552efc73b</anchor>
      <arglist>(const KeyboardTranslator::Entry &amp;entry)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>KPty</name>
    <filename>d7/d9f/class_k_pty.html</filename>
    <member kind="function">
      <type></type>
      <name>KPty</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>aca21f55c06c2ed859840ceccae66b1b3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~KPty</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>a0afc8e28f6a1ca85b4b2c9aa0ab8103f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>open</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>a86bddd6694e074fd24be475caf535b37</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>close</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>ae56d44b940d90ae01747ee5411ee76a0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>closeSlave</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>aae8c3f69ce6909544fc40ac8024873a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>tcGetAttr</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>adfb76df9d0d2a6da9af4e2a047017159</anchor>
      <arglist>(struct::termios *ttmode) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>tcSetAttr</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>a1d1158e1f96b5ef098e6cedef4d3348d</anchor>
      <arglist>(struct::termios *ttmode)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setWinSize</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>ac9a7934d31aade1761a0e935daf67a98</anchor>
      <arglist>(int lines, int columns)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setEcho</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>a862d499ca8f57cdd2e59151f9bf6923d</anchor>
      <arglist>(bool echo)</arglist>
    </member>
    <member kind="function">
      <type>const char *</type>
      <name>ttyName</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>a19e30926be530e970f5b4fb5b650e202</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>masterFd</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>a0118bd74d0518c60ff71a01f7d81c639</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>slaveFd</name>
      <anchorfile>d7/d9f/class_k_pty.html</anchorfile>
      <anchor>a54ecf7889e64dcbcb43de4a8c94f1db4</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>KPtyPrivate</name>
    <filename>d2/dca/struct_k_pty_private.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::LED</name>
    <filename>de/d7d/classbsim_1_1_l_e_d.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function">
      <type></type>
      <name>LED</name>
      <anchorfile>de/d7d/classbsim_1_1_l_e_d.html</anchorfile>
      <anchor>a9c5b73d5f925dbec30f20a85a012d16b</anchor>
      <arglist>(Board &amp;, QDomElement, QString)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>de/d7d/classbsim_1_1_l_e_d.html</anchorfile>
      <anchor>abe0d161fe81dae023fa12d18f6dbb880</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::LoadException</name>
    <filename>d3/d15/classbsim_1_1_load_exception.html</filename>
    <base>bsim::Exception</base>
  </compound>
  <compound kind="class">
    <name>bsim::MainWindow</name>
    <filename>d5/d0c/classbsim_1_1_main_window.html</filename>
    <member kind="slot">
      <type>void</type>
      <name>updateStatusbar</name>
      <anchorfile>d5/d0c/classbsim_1_1_main_window.html</anchorfile>
      <anchor>a03b2cbfa31dc24ac34281f1c78fb5d05</anchor>
      <arglist>(QString message)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>MainWindow</name>
      <anchorfile>d5/d0c/classbsim_1_1_main_window.html</anchorfile>
      <anchor>a86712312031cebde18852783118c5870</anchor>
      <arglist>(QString, QString)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>MainWindow</name>
      <anchorfile>d5/d0c/classbsim_1_1_main_window.html</anchorfile>
      <anchor>ad494a4cf173a90c648125dcb7f77b623</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array::Make</name>
    <filename>de/d83/classbsim_1_1_u_int32_array_1_1_make.html</filename>
    <base>bsim::IHardRegister::Make</base>
  </compound>
  <compound kind="class">
    <name>bsim::IHardRegister::Make</name>
    <filename>d8/daf/classbsim_1_1_i_hard_register_1_1_make.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32::Make</name>
    <filename>d7/db2/classbsim_1_1_u_int32_1_1_make.html</filename>
    <base>bsim::IHardRegister::Make</base>
  </compound>
  <compound kind="class">
    <name>bsim::HardRegister32::Maker</name>
    <filename>d0/d6a/classbsim_1_1_hard_register32_1_1_maker.html</filename>
    <base>Maker&lt; Maker, HardRegister32 &gt;</base>
  </compound>
  <compound kind="class">
    <name>bsim::IHardRegister::Maker</name>
    <filename>d5/db0/classbsim_1_1_i_hard_register_1_1_maker.html</filename>
    <templarg>M</templarg>
    <templarg>R</templarg>
  </compound>
  <compound kind="class">
    <name>bsim::HardRegister32WithSoftIO::Maker</name>
    <filename>d3/d24/classbsim_1_1_hard_register32_with_soft_i_o_1_1_maker.html</filename>
    <base>Maker&lt; Maker, HardRegister32WithSoftIO &gt;</base>
  </compound>
  <compound kind="class">
    <name>bsim::ArrayHardRegister32::Maker</name>
    <filename>d1/dda/classbsim_1_1_array_hard_register32_1_1_maker.html</filename>
    <base>Maker&lt; Maker, ArrayHardRegister32 &gt;</base>
  </compound>
  <compound kind="class">
    <name>Maker&lt; Maker, ArrayHardRegister32 &gt;</name>
    <filename>d5/db0/classbsim_1_1_i_hard_register_1_1_maker.html</filename>
  </compound>
  <compound kind="class">
    <name>Maker&lt; Maker, HardRegister32 &gt;</name>
    <filename>d5/db0/classbsim_1_1_i_hard_register_1_1_maker.html</filename>
  </compound>
  <compound kind="class">
    <name>Maker&lt; Maker, HardRegister32WithSoftIO &gt;</name>
    <filename>d5/db0/classbsim_1_1_i_hard_register_1_1_maker.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::ManSensor</name>
    <filename>d9/d6d/classbsim_1_1_man_sensor.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function">
      <type></type>
      <name>ManSensor</name>
      <anchorfile>d9/d6d/classbsim_1_1_man_sensor.html</anchorfile>
      <anchor>a0b407e0f9d7e44250426eeb3368c3c7c</anchor>
      <arglist>(Board &amp;, QDomElement, QString)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>send</name>
      <anchorfile>d9/d6d/classbsim_1_1_man_sensor.html</anchorfile>
      <anchor>a819897abedd66557793dc53430ec7f57</anchor>
      <arglist>(double value)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>d9/d6d/classbsim_1_1_man_sensor.html</anchorfile>
      <anchor>a3150a12bc240b8c6e1085450328c9752</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::MemoryDockWidget</name>
    <filename>d5/d17/classbsim_1_1_memory_dock_widget.html</filename>
    <base>PrintValue</base>
    <base>bsim::IView</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>update</name>
      <anchorfile>d5/d17/classbsim_1_1_memory_dock_widget.html</anchorfile>
      <anchor>a85bef78c90d4406555b534748c3af803</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onRun</name>
      <anchorfile>d5/d17/classbsim_1_1_memory_dock_widget.html</anchorfile>
      <anchor>a15f9c7eb1e076d61d97a5ae139094b34</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBreak</name>
      <anchorfile>d5/d17/classbsim_1_1_memory_dock_widget.html</anchorfile>
      <anchor>ac4d02af87dd3cdb7819cdf8ff802720d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onStart</name>
      <anchorfile>d5/d17/classbsim_1_1_memory_dock_widget.html</anchorfile>
      <anchor>a2ce4dd9f144b59a002b47881f5d8feab</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onStop</name>
      <anchorfile>d5/d17/classbsim_1_1_memory_dock_widget.html</anchorfile>
      <anchor>abe41a626b66bb880efbdb2afadfeaaed</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>loadSettings</name>
      <anchorfile>d5/d17/classbsim_1_1_memory_dock_widget.html</anchorfile>
      <anchor>aa65e8027c2d4258eb7dffb86638d2e65</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>saveSettings</name>
      <anchorfile>d5/d17/classbsim_1_1_memory_dock_widget.html</anchorfile>
      <anchor>a55e6aa700e978cef495edd57a90fcaed</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>MemoryException</name>
    <filename>d2/ded/class_memory_exception.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::MethodPtr</name>
    <filename>d0/da5/classbsim_1_1_method_ptr.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::MethodPtrImpl</name>
    <filename>d1/d9f/classbsim_1_1_method_ptr_impl.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <base>bsim::MethodPtr</base>
  </compound>
  <compound kind="class">
    <name>bsim::electric::MOSFET</name>
    <filename>d4/dc4/classbsim_1_1electric_1_1_m_o_s_f_e_t.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function">
      <type>void</type>
      <name>makeVisual</name>
      <anchorfile>d4/dc4/classbsim_1_1electric_1_1_m_o_s_f_e_t.html</anchorfile>
      <anchor>ad1dd275ff9afbef8a243ac2a1dd45678</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ADC::MRClass</name>
    <filename>dc/d5f/classbsim_1_1_a_d_c_1_1_m_r_class.html</filename>
    <base>bsim::UInt32Register</base>
  </compound>
  <compound kind="class">
    <name>bsim::MyHighlighter</name>
    <filename>d9/d63/classbsim_1_1_my_highlighter.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::Scheduler::NextHandler</name>
    <filename>dc/d02/classbsim_1_1_scheduler_1_1_next_handler.html</filename>
    <base>bsim::Scheduler::CompHandler</base>
    <member kind="function">
      <type></type>
      <name>NextHandler</name>
      <anchorfile>dc/d02/classbsim_1_1_scheduler_1_1_next_handler.html</anchorfile>
      <anchor>a3da4bc96e283be9bbf229dfd11c32135</anchor>
      <arglist>(QString file, int line, Handler &amp;next=FOREVER)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>stops</name>
      <anchorfile>dc/d02/classbsim_1_1_scheduler_1_1_next_handler.html</anchorfile>
      <anchor>a8aa46c6cf4b1382e429e3bb12af55a22</anchor>
      <arglist>(Core *core)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::outPin</name>
    <filename>dc/dc0/classbsim_1_1out_pin.html</filename>
    <base>bsim::SerialPin</base>
    <base>bsim::Pin</base>
    <base>bsim::Pin</base>
    <base>bsim::Pin</base>
    <base>bsim::Pin</base>
    <base>bsim::Pin</base>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>ab12ed51a12d0590e1da795a9aeaab84a</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>ab12ed51a12d0590e1da795a9aeaab84a</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>ab12ed51a12d0590e1da795a9aeaab84a</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>ab12ed51a12d0590e1da795a9aeaab84a</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onChange</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>a7a5cacd80be921c426a5c4d8eb6d22ae</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>asIRQ</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>a3b5c8916941bbf9f98403923477f2bd6</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>ab12ed51a12d0590e1da795a9aeaab84a</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onReceive</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>ad864e3feffa9cf45046a973a133656ea</anchor>
      <arglist>(uint64_t time, uint32_t word)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onConfigure</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>a206820ce4e9c2336cd0a145e378d2e9d</anchor>
      <arglist>(uint64_t time, const config_t &amp;configuration)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onWord</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>adc02d4a43db2fbf68a6fd97621d5d8c2</anchor>
      <arglist>(uint64_t time, uint32_t word)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>onError</name>
      <anchorfile>dc/dc0/classbsim_1_1out_pin.html</anchorfile>
      <anchor>a92465f6fcdb42f9bdb517a8275cb6f18</anchor>
      <arglist>(uint64_t time, QString id)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ParentNode</name>
    <filename>db/d24/classbsim_1_1_parent_node.html</filename>
    <base>bsim::AbstractRegisterNode</base>
  </compound>
  <compound kind="class">
    <name>interfaceComponent::Parser</name>
    <filename>da/db5/classinterface_component_1_1_parser.html</filename>
  </compound>
  <compound kind="class">
    <name>interfaceComponent::ParserException</name>
    <filename>df/d6f/classinterface_component_1_1_parser_exception.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::Path</name>
    <filename>d3/d03/classbsim_1_1_path.html</filename>
    <member kind="function">
      <type>const char *</type>
      <name>toCString</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>ad53f46a6023bc2242daf9ef58950f852</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isAbsolute</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>a76f8ab984f435fc34dfb71c212be5cd8</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isRelative</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>a22d59ebf1f27efd41236785e939752d2</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>exists</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>a7f3bd306f5cc9b5c8419197962d7e9bf</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isReadable</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>a2b11e2964da964ebfcd7b1b0c245b51f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>Path</type>
      <name>parent</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>a835c840cb3c22727fb14fc62a49346a2</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>Path</type>
      <name>join</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>a02ab4f72210aeaeb4eb8800068004dfb</anchor>
      <arglist>(const Path &amp;path) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>a8392660ecccd5b38f0fa1a3e370899c9</anchor>
      <arglist>(const Path &amp;path)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>extension</name>
      <anchorfile>d3/d03/classbsim_1_1_path.html</anchorfile>
      <anchor>af1e63094a4163adb302c401edcca3c4b</anchor>
      <arglist>(void) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::PeriphPin</name>
    <filename>d5/d5e/classbsim_1_1_periph_pin.html</filename>
    <base>bsim::Pin</base>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>d5/d5e/classbsim_1_1_periph_pin.html</anchorfile>
      <anchor>a7065242c47b031cf7458c03b46e5ccbf</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Pin</name>
    <filename>d7/d50/classbsim_1_1_pin.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>unit_t</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a1afd8db93267863c71f0386e7aadddc6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NO_UNIT</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a1afd8db93267863c71f0386e7aadddc6a39e41f5bb6dacb4ba3534d3369eb182a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HEAT</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a1afd8db93267863c71f0386e7aadddc6a83d0021b7fbedcf4d3328a0c46eb37db</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NO_UNIT</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a1afd8db93267863c71f0386e7aadddc6a39e41f5bb6dacb4ba3534d3369eb182a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>HEAT</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a1afd8db93267863c71f0386e7aadddc6a83d0021b7fbedcf4d3328a0c46eb37db</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Pin</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>acf9050c77fae6f7cfcc15b5c75a60688</anchor>
      <arglist>(IComponent *component, QString name=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>connect</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a3a426cfbf1bdca557cfe47e72f2d2b2b</anchor>
      <arglist>(Pin *pin)</arglist>
    </member>
    <member kind="function">
      <type>Pin *</type>
      <name>connection</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a8873b91f7ea858f7a52156c7127702a9</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>change</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>ab43e2f4ae2b22d145b81c488d8ccc341</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onChange</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>ab9a6deba22dba181f44471f7090fd98e</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>asIRQ</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a6182c5ea5d3abccc41d505e823b458c1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>send</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>af6d7b92165c34779d7403013ab300132</anchor>
      <arglist>(uint64_t time, uint32_t word)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onReceive</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a276452941a27435174d84506143b1799</anchor>
      <arglist>(uint64_t time, uint32_t word)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>configure</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a594bc4ff8b283e32cff99c5e08878ce8</anchor>
      <arglist>(uint64_t time, const config_t &amp;configuration)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onConfigure</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>ac56444c0989349e81d2ad8da919156dc</anchor>
      <arglist>(uint64_t time, const config_t &amp;configuration)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>sendAnalog</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a3b8f042148ec2bb49a75a4ff2287a101</anchor>
      <arglist>(uint64_t time, double volt)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>receiveAnalog</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a5892fe28a8ce97f8cbefb70a349ea210</anchor>
      <arglist>(uint64_t time, double volt)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setElectric</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a49ae42160490eeb03b93dfb2183cd940</anchor>
      <arglist>(time_t t, double U, double I)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setPhysics</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>ab34c43638f3f449afc2ee5c07596e408</anchor>
      <arglist>(time_t time, double value, unit_t unit)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>MODE</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>acb961304b0357154cc4f2c24967f0f5d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>WORDL</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a07902ef83ca96e0011e39cd532436473</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>SYNC</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>aaf006144517cb29d9312c35847df9cdd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>PARITY</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a01650dc77205b7fdce1f6a18d289b4f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>NBSTOP</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a66b9d5a9c79fe647ad4d890b7244740c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>MSB</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>ae457d048dd383bc7bbc40c882cbb80bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>RATE</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a7b22b4426fa70e4c0dcb0dc897e74a05</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static QString</type>
      <name>CHMODE</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a0ff86066aa72e2ea42a1fe4631cb1b9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>getElectric</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>afce0bc6d3615c225a0e1f2f19d828797</anchor>
      <arglist>(time_t t, double U, double I)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>getPhysics</name>
      <anchorfile>d7/d50/classbsim_1_1_pin.html</anchorfile>
      <anchor>a9ca6229c5a1ad62aeb7fc60cfdad59b1</anchor>
      <arglist>(time_t time, double value, unit_t unit)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::PIO</name>
    <filename>de/de9/classbsim_1_1_p_i_o.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>de/de9/classbsim_1_1_p_i_o.html</anchorfile>
      <anchor>a418df40b949367c4efc613c313da42f4</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSODR</name>
      <anchorfile>de/de9/classbsim_1_1_p_i_o.html</anchorfile>
      <anchor>a2d3f7f7938d5ae7f1a20889e8696eaaf</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCODR</name>
      <anchorfile>de/de9/classbsim_1_1_p_i_o.html</anchorfile>
      <anchor>a20677afbd29a146edb75b320bd7e290e</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>it</name>
      <anchorfile>de/de9/classbsim_1_1_p_i_o.html</anchorfile>
      <anchor>a7aa73008a9fffeb926fbbd7ccaf0a56e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getDynamicConstants</name>
      <anchorfile>de/de9/classbsim_1_1_p_i_o.html</anchorfile>
      <anchor>a8acb85d240d3f1afc00cf057e3ccc528</anchor>
      <arglist>(QVector&lt; Constant &gt; &amp;csts) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::PIOPin</name>
    <filename>dd/dd3/classbsim_1_1_p_i_o_pin.html</filename>
    <base>bsim::Pin</base>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>dd/dd3/classbsim_1_1_p_i_o_pin.html</anchorfile>
      <anchor>a8bb729a5007bf89a15c39ff43800a4b9</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>PlainTextDecoder</name>
    <filename>dc/d2f/class_plain_text_decoder.html</filename>
    <base>TerminalCharacterDecoder</base>
    <member kind="function">
      <type>void</type>
      <name>setTrailingWhitespace</name>
      <anchorfile>dc/d2f/class_plain_text_decoder.html</anchorfile>
      <anchor>a00ac97d96d41901a9244974855f3e4cd</anchor>
      <arglist>(bool enable)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>trailingWhitespace</name>
      <anchorfile>dc/d2f/class_plain_text_decoder.html</anchorfile>
      <anchor>acb38b35c66a43017bd4b41d6ef0313fc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>begin</name>
      <anchorfile>dc/d2f/class_plain_text_decoder.html</anchorfile>
      <anchor>a1f11458ad882cb52fadbe658f9377d35</anchor>
      <arglist>(QTextStream *output)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>end</name>
      <anchorfile>dc/d2f/class_plain_text_decoder.html</anchorfile>
      <anchor>aa067042ea9a81ee7fc86a26f2cf99b80</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>decodeLine</name>
      <anchorfile>dc/d2f/class_plain_text_decoder.html</anchorfile>
      <anchor>a0a21d7e2ea245bb3deb88402737e48b8</anchor>
      <arglist>(const Character *const characters, int count, LineProperty properties)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::electric::PowerSource</name>
    <filename>db/d43/classbsim_1_1electric_1_1_power_source.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>configure</name>
      <anchorfile>db/d43/classbsim_1_1electric_1_1_power_source.html</anchorfile>
      <anchor>a3ec89b7c92b1f2d5fbb56a5f1defa4cf</anchor>
      <arglist>(Configuration &amp;conf, IMonitor &amp;monitor)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>db/d43/classbsim_1_1electric_1_1_power_source.html</anchorfile>
      <anchor>a5e104b2eec237c17e89e6231d04c1350</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>makeVisual</name>
      <anchorfile>db/d43/classbsim_1_1electric_1_1_power_source.html</anchorfile>
      <anchor>a013de81c2aef0c881b763259d1931bee</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>PrintValue</name>
    <filename>d9/d5a/class_print_value.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::Program</name>
    <filename>d0/d8d/classbsim_1_1_program.html</filename>
    <class kind="struct">bsim::Program::section_t</class>
    <member kind="function">
      <type></type>
      <name>Program</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>ac290ca700ac6dbb372d5c78bba7a77f6</anchor>
      <arglist>(Path path, IMonitor &amp;mon=IMonitor::def)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getSources</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>a43f58d06c48dfb7b075e6a451280436b</anchor>
      <arglist>(QList&lt; FileSource * &gt; &amp;sources)</arglist>
    </member>
    <member kind="function">
      <type>FileSource *</type>
      <name>sourceFor</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>a3cb705a3ee046ef080c8cb033b873e79</anchor>
      <arglist>(QString file)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual addr_t</type>
      <name>addressOf</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>ac2a294835b16f48b729a8b2c745abf73</anchor>
      <arglist>(QString file, int line)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>lineOf</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>aafe818cbd00ec9eff0c559b3147bad32</anchor>
      <arglist>(addr_t address, QString &amp;file, int &amp;line)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>get</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>a20c30e441d170556ae2a953982014d05</anchor>
      <arglist>(addr_t addr, uint32_t &amp;val)=0</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>record</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>a6f552e24c76108d4873a964a3de4d15f</anchor>
      <arglist>(IHardRegister *reg)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>release</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>a123fa332785995c0185ee358adcc3ac7</anchor>
      <arglist>(IHardRegister *reg)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>listen</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>ad19a7a200cf6f1c0d9b9d3e69e080d36</anchor>
      <arglist>(addr_t addr)=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>onRead</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>a51accf471bb6a43d19330583381f3471</anchor>
      <arglist>(addr_t a, void *data, int size)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>onWrite</name>
      <anchorfile>d0/d8d/classbsim_1_1_program.html</anchorfile>
      <anchor>a0a38fb818698acab4d736775560de4f7</anchor>
      <arglist>(addr_t a, void *data, int size)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::PropLED</name>
    <filename>de/da4/classbsim_1_1_prop_l_e_d.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function">
      <type></type>
      <name>PropLED</name>
      <anchorfile>de/da4/classbsim_1_1_prop_l_e_d.html</anchorfile>
      <anchor>a2b9e4eb0e584dcc381afa40566f1758b</anchor>
      <arglist>(Board &amp;board, QDomElement xml, QString name)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>de/da4/classbsim_1_1_prop_l_e_d.html</anchorfile>
      <anchor>a565647caae41b4d4a1525131a2007dba</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>de/da4/classbsim_1_1_prop_l_e_d.html</anchorfile>
      <anchor>ab2a4b70f23bb768dda0c80c38db0fa6f</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::PWM</name>
    <filename>d8/dd2/classbsim_1_1_p_w_m.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>d8/dd2/classbsim_1_1_p_w_m.html</anchorfile>
      <anchor>a06f04cd40951ed44eaa8118a227d090c</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>genHeader</name>
      <anchorfile>d8/dd2/classbsim_1_1_p_w_m.html</anchorfile>
      <anchor>af5de3b74bd6d4f1dc910d9ea35362055</anchor>
      <arglist>(QTextStream &amp;out)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>it</name>
      <anchorfile>d8/dd2/classbsim_1_1_p_w_m.html</anchorfile>
      <anchor>aef399ba11ec5783fe181ed231748842b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>startCounter</name>
      <anchorfile>d8/dd2/classbsim_1_1_p_w_m.html</anchorfile>
      <anchor>a95f0f266fb318a81f7740e66e952a62d</anchor>
      <arglist>(int channel)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeOUT</name>
      <anchorfile>d8/dd2/classbsim_1_1_p_w_m.html</anchorfile>
      <anchor>a9c8b457db5564e4adc566b6a24acb2d1</anchor>
      <arglist>(uint32_t val)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>createEvent</name>
      <anchorfile>d8/dd2/classbsim_1_1_p_w_m.html</anchorfile>
      <anchor>a8b5cdfc5bd4a8a6ae13fd15290697c09</anchor>
      <arglist>(int channel, bool value, time_t time)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clkAB</name>
      <anchorfile>d8/dd2/classbsim_1_1_p_w_m.html</anchorfile>
      <anchor>a2be7f1a352aaf8813c0adcf080bad919</anchor>
      <arglist>(int channel, bool clka)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::PWMEvent</name>
    <filename>da/d64/classbsim_1_1_p_w_m_event.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>da/d64/classbsim_1_1_p_w_m_event.html</anchorfile>
      <anchor>a3828d953c1b801b14acc643292c8e63e</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__AssemblySyntax_t</name>
    <filename>d3/dea/structqt__meta__stringdata__bsim_____assembly_syntax__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__CodeViewer_t</name>
    <filename>d1/d67/structqt__meta__stringdata__bsim_____code_viewer__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__CSyntax_t</name>
    <filename>dc/d99/structqt__meta__stringdata__bsim_____c_syntax__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__CycleView_t</name>
    <filename>dd/d38/structqt__meta__stringdata__bsim_____cycle_view__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__MainWindow_t</name>
    <filename>d6/d60/structqt__meta__stringdata__bsim_____main_window__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__ManSensor_t</name>
    <filename>da/dd0/structqt__meta__stringdata__bsim_____man_sensor__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__MemoryDockWidget_t</name>
    <filename>dc/dd7/structqt__meta__stringdata__bsim_____memory_dock_widget__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__MyHighlighter_t</name>
    <filename>d3/df0/structqt__meta__stringdata__bsim_____my_highlighter__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__RegisterDockWidget_t</name>
    <filename>d7/d43/structqt__meta__stringdata__bsim_____register_dock_widget__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__Term_t</name>
    <filename>db/d8e/structqt__meta__stringdata__bsim_____term__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__TermModel_t</name>
    <filename>d1/d50/structqt__meta__stringdata__bsim_____term_model__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__TermWidget_t</name>
    <filename>d0/d58/structqt__meta__stringdata__bsim_____term_widget__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_bsim__TimerScheduler_t</name>
    <filename>db/d58/structqt__meta__stringdata__bsim_____timer_scheduler__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_Emulation_t</name>
    <filename>d7/db3/structqt__meta__stringdata___emulation__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_FilterObject_t</name>
    <filename>de/daa/structqt__meta__stringdata___filter_object__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_QTerminalInterface_t</name>
    <filename>df/df0/structqt__meta__stringdata___q_terminal_interface__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_ScreenWindow_t</name>
    <filename>da/d24/structqt__meta__stringdata___screen_window__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_SelfListener_t</name>
    <filename>d8/d57/structqt__meta__stringdata___self_listener__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_Sidebar_t</name>
    <filename>df/d15/structqt__meta__stringdata___sidebar__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_TerminalView_t</name>
    <filename>db/d81/structqt__meta__stringdata___terminal_view__t.html</filename>
  </compound>
  <compound kind="struct">
    <name>qt_meta_stringdata_Vt102Emulation_t</name>
    <filename>d1/d9c/structqt__meta__stringdata___vt102_emulation__t.html</filename>
  </compound>
  <compound kind="class">
    <name>QTerminal</name>
    <filename>d0/d36/class_q_terminal.html</filename>
    <base>QUnixTerminalImpl</base>
  </compound>
  <compound kind="class">
    <name>QTerminalInterface</name>
    <filename>d4/de3/class_q_terminal_interface.html</filename>
  </compound>
  <compound kind="class">
    <name>QUnixTerminalImpl</name>
    <filename>d8/d7c/class_q_unix_terminal_impl.html</filename>
    <base>QTerminalInterface</base>
  </compound>
  <compound kind="class">
    <name>bsim::RCEvent</name>
    <filename>d6/d07/classbsim_1_1_r_c_event.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d6/d07/classbsim_1_1_r_c_event.html</anchorfile>
      <anchor>abc9fb79b7639e2c65c6855ce5b554a45</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ReceptEVT</name>
    <filename>d9/d7f/classbsim_1_1_recept_e_v_t.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d9/d7f/classbsim_1_1_recept_e_v_t.html</anchorfile>
      <anchor>adfd057b790bd9ec3365229469a0c057a</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>RegExpFilter</name>
    <filename>df/d42/class_reg_exp_filter.html</filename>
    <base>Filter</base>
    <class kind="class">RegExpFilter::HotSpot</class>
    <member kind="function">
      <type></type>
      <name>RegExpFilter</name>
      <anchorfile>df/d42/class_reg_exp_filter.html</anchorfile>
      <anchor>af53b9bec3de62b0548dce3218e13951c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRegExp</name>
      <anchorfile>df/d42/class_reg_exp_filter.html</anchorfile>
      <anchor>a090f373f61070444e40f0cb73c1af3da</anchor>
      <arglist>(const QRegExp &amp;text)</arglist>
    </member>
    <member kind="function">
      <type>QRegExp</type>
      <name>regExp</name>
      <anchorfile>df/d42/class_reg_exp_filter.html</anchorfile>
      <anchor>a9b69990b7c5a43f75fda36914fd151d8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>process</name>
      <anchorfile>df/d42/class_reg_exp_filter.html</anchorfile>
      <anchor>a02fa21126169b8da3bde31c1989ee991</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual RegExpFilter::HotSpot *</type>
      <name>newHotSpot</name>
      <anchorfile>df/d42/class_reg_exp_filter.html</anchorfile>
      <anchor>ab88481dcb230aea68b265ac7968b394d</anchor>
      <arglist>(int startLine, int startColumn, int endLine, int endColumn)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interfaceComponent::Register</name>
    <filename>d4/d53/classinterface_component_1_1_register.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::RegisterDockWidget</name>
    <filename>df/d9a/classbsim_1_1_register_dock_widget.html</filename>
    <base>bsim::IView</base>
    <member kind="slot">
      <type>void</type>
      <name>timeout</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a2282cf5d9a96f572fe38c1f8f2681fd1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>startContextualMenu</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a997fe5177d7bd758c6b6fa48717afb9d</anchor>
      <arglist>(const QPoint &amp;pt)</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>copy</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a37c580343aa571a585e625192e699745</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>RegisterDockWidget</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a88a9d04cbbef4605fb50a24408f42f89</anchor>
      <arglist>(MainWindow &amp;window)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onClear</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a43bae609b15309b00ded8e1bdf7c46e7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>loadSettings</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a523bfe0744c16a83420262caf2d5d618</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>saveSettings</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>aaaf68162328cc2e12baef7ef1967abd2</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBoardLoad</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a5796b8cc7d4c39554ecdb3455d507bdf</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>update</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a0fa15de836906134bb1c00601f1b88b9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onRun</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>a125d893fd5bf6282bff7117630261036</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onBreak</name>
      <anchorfile>df/d9a/classbsim_1_1_register_dock_widget.html</anchorfile>
      <anchor>ad2c21a0a09f260ad13c2b3dd1c1849f1</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::RegisterNode</name>
    <filename>db/dce/classbsim_1_1_register_node.html</filename>
    <base>bsim::AbstractRegisterNode</base>
  </compound>
  <compound kind="class">
    <name>interfaceComponent::RegistersView</name>
    <filename>d6/de1/classinterface_component_1_1_registers_view.html</filename>
    <member kind="function">
      <type></type>
      <name>RegistersView</name>
      <anchorfile>d6/de1/classinterface_component_1_1_registers_view.html</anchorfile>
      <anchor>ac46b36a97fbbaf9e62f339f4026fa494</anchor>
      <arglist>(const QVector&lt; Register * &gt; *listRegisters)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Scheduler</name>
    <filename>d5/d92/classbsim_1_1_scheduler.html</filename>
    <class kind="class">bsim::Scheduler::BreakPointsHandler</class>
    <class kind="class">bsim::Scheduler::CompHandler</class>
    <class kind="class">bsim::Scheduler::Event</class>
    <class kind="class">bsim::Scheduler::ForeverHandler</class>
    <class kind="class">bsim::Scheduler::Handler</class>
    <class kind="class">bsim::Scheduler::NextHandler</class>
    <member kind="function">
      <type></type>
      <name>Scheduler</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a364216155d1ba01ac2fc356a09e12620</anchor>
      <arglist>(Board &amp;board)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHandler</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a92da595571c4136b60c7208d758b73e7</anchor>
      <arglist>(Handler &amp;handler)</arglist>
    </member>
    <member kind="function">
      <type>time_t</type>
      <name>time</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a2efb4bbd16d799a413e380d028f0e9a5</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a22cdc38eaf41e550212cb504c28f50c7</anchor>
      <arglist>(Event *event)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a95ff85e6e6ea237801483be368916532</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a30d06add68091b401bdf4beef39713b1</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pause</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>af62588949f1f33ff5abf99c5e996fa9c</anchor>
      <arglist>(Core *core)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>resume</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>abf69d80d914507e044801c7aa29cf4f7</anchor>
      <arglist>(Core *core)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pauseAll</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a20386ac832b0de4e6853702a615317f7</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>resumeAll</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>af0b72092ef9bc370a76603ce649dfbef</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>step</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a3452ec70a45120b93dc4bcb1b811d8d1</anchor>
      <arglist>(void)=0</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static ForeverHandler</type>
      <name>FOREVER</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>ae833cda68fa4d2a0745682039ac8ab54</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>increaseTime</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a8a299110ebff9473580bd78bd472f681</anchor>
      <arglist>(time_t delay=1)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>processEvents</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>aa71a956c30d30f6184ad8090daadfdc3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>time_t</type>
      <name>nextEventTime</name>
      <anchorfile>d5/d92/classbsim_1_1_scheduler.html</anchorfile>
      <anchor>a33885e7b159ce3a1d3fa2d574894696e</anchor>
      <arglist>(void) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Screen</name>
    <filename>d6/d21/class_screen.html</filename>
    <member kind="function">
      <type></type>
      <name>Screen</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a43646f52b1caa9ccf735625fdc3e229b</anchor>
      <arglist>(int lines, int columns)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~Screen</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a4243bc17596af96415b09ac48205676d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cursorUp</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a85b1933ad23acdc2011d891f8fe39b38</anchor>
      <arglist>(int n)</arglist>
      <docanchor file="d6/d21/class_screen">Cursor</docanchor>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cursorDown</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a4ec0287ff1bcfafd1b0bbb172debb375</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cursorLeft</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>af8ca9f311000e9939a4128d11b1180d5</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cursorRight</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>abfe44e15e06f1f90528ac3829d60dab3</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCursorY</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a38562035ab795732f4bcf8a6b5f10311</anchor>
      <arglist>(int y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCursorX</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a62c3f9f1042eb568e382ce727c5aa47a</anchor>
      <arglist>(int x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCursorYX</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a02c04ce6d82bbcd7470b07aad23d77fd</anchor>
      <arglist>(int y, int x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMargins</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a0e8342e88370e93f7b9e710478c1e2ae</anchor>
      <arglist>(int topLine, int bottomLine)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>topMargin</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a47e82099a1c934c7aabc929b81cd7c95</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>bottomMargin</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a0b97cfb598e0d34fd2742767e013cb48</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDefaultMargins</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a51151b99db623f33ec1111a6dca30c34</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>NewLine</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a649e2c2613481e9889cd2211b97c9fc2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>NextLine</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>abe61c7f839a1981abbb042f092b1a7e4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>index</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ae21956017c850d90081c857c9e8ca985</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reverseIndex</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>af507f7266da47f45404c180937e14e0d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scrollUp</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ab72aa20b8422dfeb349f3972968b64a1</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scrollDown</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ab542d50cc02fbda02a89d1f4c4288bd4</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Return</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a4786dfc571e3da42b2f1d93d22cd1281</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>BackSpace</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a3b020a983966112aede8075da2212636</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>Tabulate</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a822fa3c1d05e5b9b38c42855bffd6045</anchor>
      <arglist>(int n=1)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>backTabulate</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a02240e59f0a0cedb76c0a2aea6ebd22c</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>eraseChars</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a69660a015478c11bedb145dec5f8331f</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteChars</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a0c58afc67589c8b5a7d20148eec94a9a</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insertChars</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a3d9ad628041e1deafe7ac0334bc699a8</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>deleteLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ad3eb566d044a83634de63dc9eb34f992</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insertLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>affd77d3a8c0dd6f6238a1db640fadbd9</anchor>
      <arglist>(int n)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearTabStops</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a66daf13d95abc81bdc6a16f33e8a9197</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeTabStop</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a4db2ded44f4eb59a0b1ebaba3b109993</anchor>
      <arglist>(bool set)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetMode</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ad5804081bf9d287242c25f03cb489a55</anchor>
      <arglist>(int mode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMode</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>aa65f3b905e702938ce6102f36bc127d7</anchor>
      <arglist>(int mode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveMode</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a03a3f16db08fcf9dfebf937e86b52945</anchor>
      <arglist>(int mode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restoreMode</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ac0b7489fd5c7540128af0cd56f3b736a</anchor>
      <arglist>(int mode)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getMode</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a66a7e1157de993290693e28105778acb</anchor>
      <arglist>(int mode) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>saveCursor</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a31cef1b141f5900a8fd6944307403e1d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>restoreCursor</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ac80434be1e7a139d631cd1e0982dd3e2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearEntireScreen</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a28f45fef7017f20f34e210c2f83dcd23</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearToEndOfScreen</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a06ce1ada7ff83b84223a600c7cf52c00</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearToBeginOfScreen</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a67aab01869c401c8982d689c1ecdbc19</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearEntireLine</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a355542b8297580552bf464bd7b2161e3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearToEndOfLine</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>af63cf85179a215cae8e736042f12137f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearToBeginOfLine</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a35018c98267f73eb87712d19969920a5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>helpAlign</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a7a89ca23dc1156958cfb67010087a0ae</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRendition</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>acf546fbd57e93866e83b8edb7e2d3da9</anchor>
      <arglist>(int rendition)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetRendition</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ac46010390048f2653b523abeeaa44286</anchor>
      <arglist>(int rendition)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setForeColor</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>afb20c5fb184592ff03f11e031d665c80</anchor>
      <arglist>(int space, int color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBackColor</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>acf70f90f868fedc1211974d8d76226c7</anchor>
      <arglist>(int space, int color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDefaultRendition</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>aaa87a8c739436e20cd1004a30aa3f45e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getCursorX</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>aa1e7868f23559e828b39bd202eec8cd9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getCursorY</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>adbc96502e9f28bd9fa5c269e004829fb</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a35e74266b2a04e37b354ceff7a5f1031</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>home</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a5d468ece8fef9e6f9d4ab8cdbf14d712</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>reset</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a1a87a66f9057eacb93b7b45680e47abf</anchor>
      <arglist>(bool clearScreen=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ShowCharacter</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ad0d72720314359e3edd7e7d46a6711a7</anchor>
      <arglist>(unsigned short c)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resizeImage</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a093a3e8b11ea98e4bdb6c7cba8dd7c0b</anchor>
      <arglist>(int new_lines, int new_columns)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getImage</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a83cab9782cce89d0d6b224c8aab8669b</anchor>
      <arglist>(Character *dest, int size, int startLine, int endLine) const </arglist>
    </member>
    <member kind="function">
      <type>QVector&lt; LineProperty &gt;</type>
      <name>getLineProperties</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a4c63bfeaaaeec82415284f63c04df478</anchor>
      <arglist>(int startLine, int endLine) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>af7da2013730b19387af23feb604c02df</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getColumns</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a1685dec5eded6bcde0590cc179597129</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getHistLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a49fa4df52c9b349c052fa9be6d553a57</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setScroll</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a190d75da4dd211805bd19aae33f12a00</anchor>
      <arglist>(const HistoryType &amp;, bool copyPreviousScroll=true)</arglist>
    </member>
    <member kind="function">
      <type>const HistoryType &amp;</type>
      <name>getScroll</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ac751fadd080010b44dbbea6272fecd8b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasScroll</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a53f4326c6475ea496a2fefa4ea5082d2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelectionStart</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>aaaf500a86e2aefbffbd7fbb9f8535f80</anchor>
      <arglist>(const int column, const int line, const bool columnmode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelectionEnd</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a63564237fde266abf9ec7214ceb9191f</anchor>
      <arglist>(const int column, const int line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getSelectionStart</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a6f34613d70603c02ee2c3dc14f724f0a</anchor>
      <arglist>(int &amp;column, int &amp;line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getSelectionEnd</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a81584c6fbcdfe89a95b8e590fb826274</anchor>
      <arglist>(int &amp;column, int &amp;line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearSelection</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a94c578e2b2a3ff2dd44d501696e435ea</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isSelected</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a8153a600e78ff19e7581186280de976c</anchor>
      <arglist>(const int column, const int line) const </arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>selectedText</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a2b7bf5af1c4f7b8af68bfbe3122921c4</anchor>
      <arglist>(bool preserveLineBreaks)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeToStream</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a2a26289443887d32c2b7b2ba802e187c</anchor>
      <arglist>(TerminalCharacterDecoder *decoder, int from, int to)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>getHistoryLine</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a461258339953c2f0ba6679f1ebd40e03</anchor>
      <arglist>(int no)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>writeSelectionToStream</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a4135fcf6c000bef55fe3539f9dab5788</anchor>
      <arglist>(TerminalCharacterDecoder *decoder, bool preserveLineBreaks=true)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>checkSelection</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a13b82a971470703fe58d7eab14b550c7</anchor>
      <arglist>(int from, int to)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLineProperty</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>aa5cb69bdd9147093f9acc968705b9a47</anchor>
      <arglist>(LineProperty property, bool enable)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>scrolledLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ab513dddb9be690969f37c5efe0cc7056</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QRect</type>
      <name>lastScrolledRegion</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a0b4cebfcf5bce2c4753eaf0c36d7254e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetScrolledLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>aaf44fd682aaea8cdef48ff095cea008b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>droppedLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a6bab52f77bb353328df2fffd16b25b8f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetDroppedLines</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>ac6c4cfc16c9f7e7292f41a1f1ffaac5a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>fillWithDefaultChar</name>
      <anchorfile>d6/d21/class_screen.html</anchorfile>
      <anchor>a50e935a1c665d35ebb5af2e3de35c3d0</anchor>
      <arglist>(Character *dest, int count)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>ScreenParm</name>
    <filename>d5/dea/struct_screen_parm.html</filename>
  </compound>
  <compound kind="class">
    <name>ScreenWindow</name>
    <filename>da/d5e/class_screen_window.html</filename>
    <member kind="slot">
      <type>void</type>
      <name>notifyOutputChanged</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>aac35699a63ddbcce061094de4c09fbe0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>outputChanged</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ae29665b9667f989efd8158cadfcad635</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>scrolled</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a2ca7914ebd6925ccb3faf8ff1e7faf0e</anchor>
      <arglist>(int line)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>selectionChanged</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ab2120dd921b74d090c72bf04f27d7982</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ScreenWindow</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a0d1d60a878148efe1a53aad2df09db2e</anchor>
      <arglist>(QObject *parent=0)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setScreen</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>aa9a9902346260c3bfb350f2898d29c66</anchor>
      <arglist>(Screen *screen)</arglist>
    </member>
    <member kind="function">
      <type>Screen *</type>
      <name>screen</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a94e46491598e8f8ab153693189bcd13c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Character *</type>
      <name>getImage</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a07a4004947f099f8a71932c71230022e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QVector&lt; LineProperty &gt;</type>
      <name>getLineProperties</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ae5687ce55d8b2fce54da44dbbb8b20e7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>scrollCount</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a9d640a6e22085774eda01137df03828a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>resetScrollCount</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ace5de42362c50f862fc7565b0db153b0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QRect</type>
      <name>scrollRegion</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ab988970089e64649b51c4d8fdf8ac677</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelectionStart</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a0fe3b77417af71aecb672f8d2944622f</anchor>
      <arglist>(int column, int line, bool columnMode)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSelectionEnd</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a17da89e53fadfd062817fb1f1adb9809</anchor>
      <arglist>(int column, int line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getSelectionStart</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a63c9ff8a94dddff6b7945ae619cf6d1d</anchor>
      <arglist>(int &amp;column, int &amp;line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getSelectionEnd</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a1945d162869f27d24dadf0306e961c61</anchor>
      <arglist>(int &amp;column, int &amp;line)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isSelected</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a4c624a7677c58e6868cc678fe7a219c6</anchor>
      <arglist>(int column, int line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearSelection</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a6da1bdc317a4963ae5685b27424154e2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setWindowLines</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>af5f1feff3f26028ba422be27992123af</anchor>
      <arglist>(int lines)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>windowLines</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a8f7e5a99367de875c4ff5f09f7aab050</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>windowColumns</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a01fa3ad0b281d3da206b21e51fa1b347</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>lineCount</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a2af334fdf14d70627c57b36b9694b5d2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>columnCount</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a6fccfb7b9e05dfcd35f4b0a984e5e18b</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>currentLine</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a90336e9211cff8a6855d082b0416d039</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QPoint</type>
      <name>cursorPosition</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a45b27b26502e8c8ab04b3e928b022135</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>atEndOfOutput</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ac70ca650cbedbc4e6e8ef33360814427</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scrollTo</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ac850bb05c9a56b530f1bff8daaaa1eb4</anchor>
      <arglist>(int line)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>scrollBy</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>ab994cf2d92b3a68e672e6eb81a757541</anchor>
      <arglist>(RelativeScrollMode mode, int amount)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTrackOutput</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a2a3f8b260567295068be200f21d5346d</anchor>
      <arglist>(bool trackOutput)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>trackOutput</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a316d29ad34b312aceeb9bdfcbb50b0cc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>selectedText</name>
      <anchorfile>da/d5e/class_screen_window.html</anchorfile>
      <anchor>a356838a995a8a7efdb61f3dab7dd2eb6</anchor>
      <arglist>(bool preserveLineBreaks) const </arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>bsim::Program::section_t</name>
    <filename>dc/dd2/structbsim_1_1_program_1_1section__t.html</filename>
  </compound>
  <compound kind="class">
    <name>SelfListener</name>
    <filename>d9/d0e/class_self_listener.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::SerialPin</name>
    <filename>d9/d6d/classbsim_1_1_serial_pin.html</filename>
    <base>bsim::Pin</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onReceive</name>
      <anchorfile>d9/d6d/classbsim_1_1_serial_pin.html</anchorfile>
      <anchor>a11488cb47bcdb8f0cac5f280085dad1e</anchor>
      <arglist>(uint64_t time, uint32_t word)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onConfigure</name>
      <anchorfile>d9/d6d/classbsim_1_1_serial_pin.html</anchorfile>
      <anchor>a7eadc14c0f7ce6b817b3a3a78c355bf1</anchor>
      <arglist>(uint64_t time, const config_t &amp;configuration)</arglist>
    </member>
    <member kind="function">
      <type>QVariant</type>
      <name>get</name>
      <anchorfile>d9/d6d/classbsim_1_1_serial_pin.html</anchorfile>
      <anchor>a87d5403f4bc9c910fb181adbcbdce235</anchor>
      <arglist>(QString id) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set</name>
      <anchorfile>d9/d6d/classbsim_1_1_serial_pin.html</anchorfile>
      <anchor>a24c4a15f6fa9b4a5dd0e87679a2bc5bb</anchor>
      <arglist>(QString id, QVariant value)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>onWord</name>
      <anchorfile>d9/d6d/classbsim_1_1_serial_pin.html</anchorfile>
      <anchor>a4238e1358ed7cee210563d448d708656</anchor>
      <arglist>(uint64_t time, uint32_t word)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>onError</name>
      <anchorfile>d9/d6d/classbsim_1_1_serial_pin.html</anchorfile>
      <anchor>a55ebe2793d2ab4785bb424995b58bf18</anchor>
      <arglist>(uint64_t time, QString id)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array::Setter</name>
    <filename>dc/d6d/classbsim_1_1_u_int32_array_1_1_setter.html</filename>
    <templarg>T</templarg>
  </compound>
  <compound kind="class">
    <name>bsim::Setter</name>
    <filename>d4/df5/classbsim_1_1_setter.html</filename>
    <templarg>T</templarg>
    <base>bsim::MethodPtr</base>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32::Setter</name>
    <filename>d5/d7d/classbsim_1_1_u_int32_1_1_setter.html</filename>
    <templarg>T</templarg>
    <base>bsim::IRegister::AbstractAccessor</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>access</name>
      <anchorfile>d5/d7d/classbsim_1_1_u_int32_1_1_setter.html</anchorfile>
      <anchor>ab071289208ed79d251e36ec30957e6f6</anchor>
      <arglist>(addr_t a, int s, void *d)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Setter&lt; int32_t &gt;</name>
    <filename>d4/df5/classbsim_1_1_setter.html</filename>
    <base>bsim::MethodPtr</base>
  </compound>
  <compound kind="class">
    <name>bsim::SetterImpl</name>
    <filename>df/db2/classbsim_1_1_setter_impl.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>bsim::Setter</base>
  </compound>
  <compound kind="class">
    <name>bsim::SetterImplWithSoftIO</name>
    <filename>dc/d03/classbsim_1_1_setter_impl_with_soft_i_o.html</filename>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <templarg></templarg>
    <base>bsim::Setter</base>
  </compound>
  <compound kind="class">
    <name>Sidebar</name>
    <filename>df/d42/class_sidebar.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::SleepEVT</name>
    <filename>d9/d76/classbsim_1_1_sleep_e_v_t.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d9/d76/classbsim_1_1_sleep_e_v_t.html</anchorfile>
      <anchor>a71990b2025d97c5cb3160e66986357bd</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::SourceBreakPoint</name>
    <filename>d7/d25/classbsim_1_1_source_break_point.html</filename>
    <base>bsim::BreakPoint</base>
    <member kind="function">
      <type></type>
      <name>SourceBreakPoint</name>
      <anchorfile>d7/d25/classbsim_1_1_source_break_point.html</anchorfile>
      <anchor>a193e7e6e5362b4d54d4f7b9e09458471</anchor>
      <arglist>(QString file, int line)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>saveSettings</name>
      <anchorfile>d7/d25/classbsim_1_1_source_break_point.html</anchorfile>
      <anchor>aa9b3c7146ae030e76d4cde54b3fda352</anchor>
      <arglist>(QSettings &amp;settings)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>name</name>
      <anchorfile>d7/d25/classbsim_1_1_source_break_point.html</anchorfile>
      <anchor>a3dc572983c5cd9baaabcf4a826ba1d5d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual addr_t</type>
      <name>address</name>
      <anchorfile>d7/d25/classbsim_1_1_source_break_point.html</anchorfile>
      <anchor>a45ad0bea7a8a812ed26d9094c5888677</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::ADC::SRClass</name>
    <filename>d2/d60/classbsim_1_1_a_d_c_1_1_s_r_class.html</filename>
    <base>bsim::UInt32Register</base>
  </compound>
  <compound kind="class">
    <name>bsim::StatusRegister</name>
    <filename>d0/db6/classbsim_1_1_status_register.html</filename>
    <base>bsim::HardRegister32WithSoftIO</base>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>qualifiedName</name>
      <anchorfile>d0/db6/classbsim_1_1_status_register.html</anchorfile>
      <anchor>a823aa56afcc9c0212befb2db357ebca2</anchor>
      <arglist>(IComponent *component, int i)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>displayName</name>
      <anchorfile>d0/db6/classbsim_1_1_status_register.html</anchorfile>
      <anchor>ad22d453f32bc62ef315e454d3add1e88</anchor>
      <arglist>(int i)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::synPin</name>
    <filename>d5/d23/classbsim_1_1syn_pin.html</filename>
    <base>bsim::Pin</base>
    <member kind="function">
      <type>void</type>
      <name>onChange</name>
      <anchorfile>d5/d23/classbsim_1_1syn_pin.html</anchorfile>
      <anchor>a2e19b4a786898551b477717004aa0665</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::TC</name>
    <filename>d8/d82/classbsim_1_1_t_c.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>d8/d82/classbsim_1_1_t_c.html</anchorfile>
      <anchor>a837c0a496fdceb66bdf63a78c5e1be0b</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>changeOut</name>
      <anchorfile>d8/d82/classbsim_1_1_t_c.html</anchorfile>
      <anchor>a17fbe78eb99e3dd91685d7be0337294c</anchor>
      <arglist>(uint32_t changes, int channel)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>it0</name>
      <anchorfile>d8/d82/classbsim_1_1_t_c.html</anchorfile>
      <anchor>aa30620e813108d0dc45dd8fdee727940</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>it1</name>
      <anchorfile>d8/d82/classbsim_1_1_t_c.html</anchorfile>
      <anchor>a83f9d0f55f113441a71c0c494a3da580</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>it2</name>
      <anchorfile>d8/d82/classbsim_1_1_t_c.html</anchorfile>
      <anchor>a6adcc503c0bb84de2da5c0eb4e79db86</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::TCEvent</name>
    <filename>d6/d3a/classbsim_1_1_t_c_event.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d6/d3a/classbsim_1_1_t_c_event.html</anchorfile>
      <anchor>ab55f0b2b2d293e09bce1d5dc1030748d</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::TCPin</name>
    <filename>de/dbf/classbsim_1_1_t_c_pin.html</filename>
    <base>bsim::Pin</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>onChange</name>
      <anchorfile>de/dbf/classbsim_1_1_t_c_pin.html</anchorfile>
      <anchor>a243fca56cb2991fce4610331726d8958</anchor>
      <arglist>(uint64_t time, bool value)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Term</name>
    <filename>df/d89/classbsim_1_1_term.html</filename>
    <base>bsim::IComponent</base>
    <member kind="slot">
      <type>void</type>
      <name>sendData</name>
      <anchorfile>df/d89/classbsim_1_1_term.html</anchorfile>
      <anchor>ab630739b0c0d553d25e3fb99a15f95e5</anchor>
      <arglist>(const char *data, int len)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Term</name>
      <anchorfile>df/d89/classbsim_1_1_term.html</anchorfile>
      <anchor>aa2a26e05fbf3f060f244e4732c7bb2b4</anchor>
      <arglist>(Board &amp;board, QDomElement element, QString name)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>installUI</name>
      <anchorfile>df/d89/classbsim_1_1_term.html</anchorfile>
      <anchor>a7354dd8357c2425f2e9f7328455f3b22</anchor>
      <arglist>(MainWindow &amp;window)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>uninstallUI</name>
      <anchorfile>df/d89/classbsim_1_1_term.html</anchorfile>
      <anchor>ab80e91e67969d097a99b59d78b0ff4b1</anchor>
      <arglist>(MainWindow &amp;window)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>df/d89/classbsim_1_1_term.html</anchorfile>
      <anchor>a1851459df532d4538175681314fe7459</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>df/d89/classbsim_1_1_term.html</anchorfile>
      <anchor>ae129d55495db8c5af994243000499e36</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>TerminalCharacterDecoder</name>
    <filename>db/d53/class_terminal_character_decoder.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>begin</name>
      <anchorfile>db/d53/class_terminal_character_decoder.html</anchorfile>
      <anchor>a8521735248b5cb54e41cd159d1f398e3</anchor>
      <arglist>(QTextStream *output)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>end</name>
      <anchorfile>db/d53/class_terminal_character_decoder.html</anchorfile>
      <anchor>a21a952249e94d4451bf2370cbe86df57</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>decodeLine</name>
      <anchorfile>db/d53/class_terminal_character_decoder.html</anchorfile>
      <anchor>acf5df51fc7b1bf04c2427da46a2756d0</anchor>
      <arglist>(const Character *const characters, int count, LineProperty properties)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>TerminalImageFilterChain</name>
    <filename>dc/dd9/class_terminal_image_filter_chain.html</filename>
    <base>FilterChain</base>
    <member kind="function">
      <type>void</type>
      <name>setImage</name>
      <anchorfile>dc/dd9/class_terminal_image_filter_chain.html</anchorfile>
      <anchor>aa0ef69e102f3c1c1af4c7a57241caef8</anchor>
      <arglist>(const Character *const image, int lines, int columns, const QVector&lt; LineProperty &gt; &amp;lineProperties)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>TerminalModel</name>
    <filename>d4/d67/class_terminal_model.html</filename>
    <member kind="slot">
      <type>void</type>
      <name>run</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a575e99676ed02cd62b1ca1f295b6a7fb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>close</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>af015debfd5fe7b43bf95f71853b743c8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>started</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ac1c18507fdf59ed754a57ed8948eb4a3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>finished</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>af6b922f3c297ad1f81551f418906f0da</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>receivedData</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>aa0e92469a527eddd69b14ea5b4c304f4</anchor>
      <arglist>(const QString &amp;text)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>titleChanged</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a5fc11658ffbd1a39bef2978815b968ae</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>profileChanged</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>aef81c0e8e134a69908d6ef7c38daa692</anchor>
      <arglist>(const QString &amp;profile)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>stateChanged</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a7ad731fe63be0b41881a9549179cc010</anchor>
      <arglist>(int state)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>bellRequest</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a1c576a49bd0b633520c3b7b33d39a945</anchor>
      <arglist>(const QString &amp;message)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>changeTabTextColorRequest</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ac226bfc9d673fb3b8cde09df86b04ba2</anchor>
      <arglist>(int)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>changeBackgroundColorRequest</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a99968e224782066bf9bfe3bf0372e9c6</anchor>
      <arglist>(const QColor &amp;)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>openUrlRequest</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ae782696b0ba7b04793aac3452814b583</anchor>
      <arglist>(const QString &amp;url)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>resizeRequest</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a5c4d737f8056c01e78cfca168ced66c9</anchor>
      <arglist>(const QSize &amp;size)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>profileChangeCommandReceived</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a2bc4c77053f2fa11b70716c142b48b2a</anchor>
      <arglist>(const QString &amp;text)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TerminalModel</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a26acdb85d78640e19daf536ff577d75a</anchor>
      <arglist>(KPty *kpty)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setProfileKey</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a1b38c51bf2246bd306505dcc1784145d</anchor>
      <arglist>(const QString &amp;profileKey)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>profileKey</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>adbfc1b82c40e9605a9c9466374c5cee8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addView</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a745f4d0e8a4f4bc633bbc97af2f557f6</anchor>
      <arglist>(TerminalView *widget)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeView</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>aecdac589eed7ad082cc02c76e5663d90</anchor>
      <arglist>(TerminalView *widget)</arglist>
    </member>
    <member kind="function">
      <type>QList&lt; TerminalView * &gt;</type>
      <name>views</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ad3ad3619a089d21126f3b6dcd8fe8265</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>Emulation *</type>
      <name>emulation</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a8d9ba4876a1e0b0dcc90ab9029a7727b</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHistoryType</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>afcba95e4be24c0e8bbbfc23d295c1e73</anchor>
      <arglist>(const HistoryType &amp;type)</arglist>
    </member>
    <member kind="function">
      <type>const HistoryType &amp;</type>
      <name>historyType</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a9716f5227b992419a80ff1e6213050e2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clearHistory</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ae2cf5b2e8730ef282d64bc0de0637065</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMonitorActivity</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>abb14c4d665a0faf9ce1c4f1d0cd08fdf</anchor>
      <arglist>(bool)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isMonitorActivity</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a24db3516a26774ffedcf429c076aa584</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMonitorSilence</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a498674e75644c611cc227342ae1a2ae0</anchor>
      <arglist>(bool)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isMonitorSilence</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a02d81e137be57201316bd410e0a504e6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setMonitorSilenceSeconds</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>af6be5196f9ddbe7fa5b108c58e652221</anchor>
      <arglist>(int seconds)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setKeyBindings</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ac0fdbee7850f8428015ef2c174413db7</anchor>
      <arglist>(const QString &amp;id)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>keyBindings</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ae1080b9dafb81c8032c918918d4b967d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAddToUtmp</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ae27b93f36bf39174388e5ffe3f6b51ab</anchor>
      <arglist>(bool)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAutoClose</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a309c339036941ae083bb5613f5d0c4e8</anchor>
      <arglist>(bool b)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sendText</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a43f2ef4de546c30928c20ef24b479477</anchor>
      <arglist>(const QString &amp;text) const </arglist>
    </member>
    <member kind="function">
      <type>QSize</type>
      <name>size</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a265c0d5ae005a0c47576a604044e12e4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSize</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>aeb5562fe8dad14eba1860b4b022e1e29</anchor>
      <arglist>(const QSize &amp;size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCodec</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>a2988bbac4c71971b1957acb728abc294</anchor>
      <arglist>(QTextCodec *codec)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDarkBackground</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>ae520edef993b0837b022164e7a7cd864</anchor>
      <arglist>(bool darkBackground)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>hasDarkBackground</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>aebbc67b40bb60adbd4fa0549dff51dc3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>refresh</name>
      <anchorfile>d4/d67/class_terminal_model.html</anchorfile>
      <anchor>aab52fa445fe8739f8f179d4318311fdb</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>TerminalView</name>
    <filename>de/d52/class_terminal_view.html</filename>
    <class kind="struct">TerminalView::_dragInfo</class>
    <member kind="enumeration">
      <type></type>
      <name>ScrollBarPosition</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9d8663f683aa1d742822fdefc5b907b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoScrollBar</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9d8663f683aa1d742822fdefc5b907b7a5c809f88c487e816a9f7b67808543657</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollBarLeft</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9d8663f683aa1d742822fdefc5b907b7a434d7040006d4fefb8ed44a3632ad582</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollBarRight</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9d8663f683aa1d742822fdefc5b907b7a875301b650d0cc1756344e7849f09fa4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>TripleClickMode</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a4fa9d316a957b216c9e1273340e3f937</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SelectWholeLine</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a4fa9d316a957b216c9e1273340e3f937abe6dd816b7ac5bb8cde2a4efbfff3bd2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SelectForwardsFromCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a4fa9d316a957b216c9e1273340e3f937a1b2522398275886fb347a104490cedb5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>KeyboardCursorShape</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab8692708bdca9fed370af293251a0644</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>BlockCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab8692708bdca9fed370af293251a0644a2c0273fcfe6bd590530ab19c3066b48d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>UnderlineCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab8692708bdca9fed370af293251a0644a026c476006fd4ebac102a874c24cbe2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IBeamCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab8692708bdca9fed370af293251a0644a2bfbc97337e4052c9d5ffc932f931eec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>BellMode</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SystemBeepBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4ac506e62bb6b057f6d7f69d567a0a7347</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotifyBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4a84d1a35905c82ad9160d2106a4f50502</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>VisualBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4a4b6ce6dee007f28fa20f011b838a8205</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4abc38229326b588bee935249ab8ee988d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoScrollBar</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9d8663f683aa1d742822fdefc5b907b7a5c809f88c487e816a9f7b67808543657</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollBarLeft</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9d8663f683aa1d742822fdefc5b907b7a434d7040006d4fefb8ed44a3632ad582</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>ScrollBarRight</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9d8663f683aa1d742822fdefc5b907b7a875301b650d0cc1756344e7849f09fa4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SelectWholeLine</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a4fa9d316a957b216c9e1273340e3f937abe6dd816b7ac5bb8cde2a4efbfff3bd2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SelectForwardsFromCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a4fa9d316a957b216c9e1273340e3f937a1b2522398275886fb347a104490cedb5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>BlockCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab8692708bdca9fed370af293251a0644a2c0273fcfe6bd590530ab19c3066b48d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>UnderlineCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab8692708bdca9fed370af293251a0644a026c476006fd4ebac102a874c24cbe2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>IBeamCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab8692708bdca9fed370af293251a0644a2bfbc97337e4052c9d5ffc932f931eec</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>SystemBeepBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4ac506e62bb6b057f6d7f69d567a0a7347</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotifyBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4a84d1a35905c82ad9160d2106a4f50502</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>VisualBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4a4b6ce6dee007f28fa20f011b838a8205</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NoBell</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a85c81105e39871d2c0f4a142370d22d4abc38229326b588bee935249ab8ee988d</anchor>
      <arglist></arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>updateImage</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a79771ab368920666e985b6e48fdaa540</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>updateLineProperties</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a202a13e45c0923bb5eff4ed0cfce85c1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>copyClipboard</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a069c8647a35790d69ce8aa2f8f91148f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>pasteClipboard</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a21324e653c5b2341ef13df1dc403700e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>pasteSelection</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>aceee1f223e84a2543d3b27aecf854f75</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>outputSuspended</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>abf46d986d5dcbdb2b2fb772a486c2378</anchor>
      <arglist>(bool suspended)</arglist>
    </member>
    <member kind="slot">
      <type>void</type>
      <name>setUsesMouse</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a3e49ff8c349e4999cd1b39b06abdf501</anchor>
      <arglist>(bool usesMouse)</arglist>
    </member>
    <member kind="slot">
      <type>bool</type>
      <name>usesMouse</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a3180c13faa4d37c04eefd8188941896d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>keyPressedSignal</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ae49a393e56216baabdcb3565d7fc47f6</anchor>
      <arglist>(QKeyEvent *e)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>mouseSignal</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a88dcf1a83048c852ba95ff064f9da981</anchor>
      <arglist>(int button, int column, int line, int eventType)</arglist>
    </member>
    <member kind="signal">
      <type>void</type>
      <name>configureRequest</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a4808cfc06f8f3bfdd5838b9c9b0933f7</anchor>
      <arglist>(TerminalView *, int state, const QPoint &amp;position)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>TerminalView</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ad89a15d0a31bde6677b2ac7405374306</anchor>
      <arglist>(QWidget *parent=0)</arglist>
    </member>
    <member kind="function">
      <type>const ColorEntry *</type>
      <name>colorTable</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a4abdeae5eca73a82732318bb35b6d015</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setColorTable</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a505383933689f297a415903517ebcf1f</anchor>
      <arglist>(const ColorEntry table[])</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRandomSeed</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a48ca59d6bf9370c41aaac4b540bd5f55</anchor>
      <arglist>(uint seed)</arglist>
    </member>
    <member kind="function">
      <type>uint</type>
      <name>randomSeed</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>aee92853bf56d30442f235c1ea3728986</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setScrollBarPosition</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a50e846db5e16965f4e53ff3426314161</anchor>
      <arglist>(ScrollBarPosition position)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setScroll</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a47d2a6cbb35ca95af4ab3f10f3ad5955</anchor>
      <arglist>(int cursor, int lines)</arglist>
    </member>
    <member kind="function">
      <type>FilterChain *</type>
      <name>filterChain</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a5d64e349a3511792158233843fc1e7e5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>processFilters</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a18c220e238959a314b31f1d48c33aa04</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QList&lt; QAction * &gt;</type>
      <name>filterActions</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a98510b4bf5f7ef327cf184ec90a75c81</anchor>
      <arglist>(const QPoint &amp;position)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>blinkingCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a0de9553366e2396b6141c26a8d5a101d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBlinkingCursor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a8e3e663055cd67e054393ac07aecfa65</anchor>
      <arglist>(bool blink)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTripleClickMode</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a9c7cd4d8b9b86514b858b2f47321ca2c</anchor>
      <arglist>(TripleClickMode mode)</arglist>
    </member>
    <member kind="function">
      <type>TripleClickMode</type>
      <name>tripleClickMode</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ae4bda3560cea0cdb407b6ce45ac773c2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setKeyboardCursorShape</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a52b3f41fdd782a72ca9c2fc8312578bf</anchor>
      <arglist>(KeyboardCursorShape shape)</arglist>
    </member>
    <member kind="function">
      <type>KeyboardCursorShape</type>
      <name>keyboardCursorShape</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a457b52966b027cb68ce57f2fe927836c</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setKeyboardCursorColor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a6174d42a1e85f634719a8d97eb0452d0</anchor>
      <arglist>(bool useForegroundColor, const QColor &amp;color)</arglist>
    </member>
    <member kind="function">
      <type>QColor</type>
      <name>keyboardCursorColor</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>aa9222ed962b0f2a0a61f415e9fea717a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>lines</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>ab0c4bf0c0938f03497f4b3da9b082a59</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>columns</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a79fa454a4f7bd9c14b2e135440251345</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>fontHeight</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a1ee31b9c2af1079ab0539a9e898271c0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>fontWidth</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>adbf6acdd5dabaa519db35d649930cf1f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setWordCharacters</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a182a994b80b50a1640358e5b0d3de455</anchor>
      <arglist>(const QString &amp;wc)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>wordCharacters</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a50fa3c83ebafd59e7ca9265de515a715</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBellMode</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a3ab1d1b5a3e948fbfbf07f7b314157e3</anchor>
      <arglist>(int mode)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>bellMode</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a332049bdeff543b37b95785b262108c0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>setFont</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a2d3918fdb19b31793dd0427077eea81a</anchor>
      <arglist>(const QFont &amp;)</arglist>
    </member>
    <member kind="function">
      <type>QFont</type>
      <name>getVTFont</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a50913fd123cd805ecf691f4932d85b28</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setVTFont</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a6cdc5e998290804d29c94b64b4d67bc7</anchor>
      <arglist>(const QFont &amp;font)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setReadOnly</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a8a9cc179dcaccdb12ae494598d5dfb20</anchor>
      <arglist>(bool readonly)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTerminalSizeHint</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>afc744faadc2a0d482459105d017fcd98</anchor>
      <arglist>(bool on)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>terminalSizeHint</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>acf1fab21a07d2da95fffa58b270a204b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTerminalSizeStartup</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a2acf7c2f12b20567f6f89a9c9159f9e9</anchor>
      <arglist>(bool on)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setScreenWindow</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a5fcbecd8380f323625adddbed52e7e84</anchor>
      <arglist>(ScreenWindow *window)</arglist>
    </member>
    <member kind="function">
      <type>ScreenWindow *</type>
      <name>screenWindow</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>af037722be078debba28b79f0a163ed91</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>setAntialias</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>a574d56e04c314824240decc19be255cd</anchor>
      <arglist>(bool antialias)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>antialias</name>
      <anchorfile>de/d52/class_terminal_view.html</anchorfile>
      <anchor>afc760133b30abb4524c3b3ff6037d232</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::TermModel</name>
    <filename>df/d33/classbsim_1_1_term_model.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::TermWidget</name>
    <filename>d5/dc7/classbsim_1_1_term_widget.html</filename>
    <base>QTerminalInterface</base>
  </compound>
  <compound kind="class">
    <name>bsim::physics::Thermistor</name>
    <filename>d9/d68/classbsim_1_1physics_1_1_thermistor.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>configure</name>
      <anchorfile>d9/d68/classbsim_1_1physics_1_1_thermistor.html</anchorfile>
      <anchor>af4985d1642ca596355e8541e16604e2a</anchor>
      <arglist>(Configuration &amp;conf, IMonitor &amp;monitor)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>makeVisual</name>
      <anchorfile>d9/d68/classbsim_1_1physics_1_1_thermistor.html</anchorfile>
      <anchor>a9fb5d5552983e80da61a2d5062520637</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>timer::Timer</name>
    <filename>d4/d7f/classtimer_1_1_timer.html</filename>
    <base>interfaceComponent::InterfaceComponent</base>
    <member kind="function">
      <type>void</type>
      <name>CCR_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a5af141ca8dfe0c000491618dc79e2412</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CMR_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a16c3f292163582592597cb9940102d90</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CMR_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>aa6e88b61b6dc72ddc1e7f492e4abc40e</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CV_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>acbe3476385dad3c54a92b5c5070ab6dd</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>CV_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a00362949146a9c41c8e386504aba3970</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RA_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>add916b86d07a07dd66c2d0a0af1f023e</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RA_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a9e108a162dca6727e0baa3684c734f20</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RB_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a977ca92d397c829298c80cd30b23002a</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RB_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a4d940af583545cade0b45c35401c0a89</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RC_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a353ab49a915873d412b1fc10f5e20b39</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>RC_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a28bdb0d956be976445e053891e634443</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SR_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a033968d521f84a60d6688bbc00fd1c43</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>BCR_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a0344518aca08dc9f9eed30252a2b795a</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>BCR_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>aa293325518e70d13eed8ec480cb211e1</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>BMR_Reader</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a2b9755a41dcba90d6642791231e71cbf</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>BMR_Writer</name>
      <anchorfile>d4/d7f/classtimer_1_1_timer.html</anchorfile>
      <anchor>a9449f1fa72251a6c54957d7fdaca28b7</anchor>
      <arglist>(arm_address_t addr, int size, void *ptr_data)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::TimerScheduler</name>
    <filename>d2/d23/classbsim_1_1_timer_scheduler.html</filename>
    <base>bsim::Scheduler</base>
    <member kind="function">
      <type>int</type>
      <name>slices</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>a9037b813bbe1aa26209bd45270401164</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSlices</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>ab1dede12ba08e0194e304433ae539c55</anchor>
      <arglist>(int slices)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>a8c097ff568e723b90c6cabcd0e607433</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>a32bb00632972bb9e21afa69b43b46cd4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>pause</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>a57ef1b2160ddc565349916467eb7c83f</anchor>
      <arglist>(Core *core)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resume</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>ae7334c71c3742fc05a3bf60ebb9dd716</anchor>
      <arglist>(Core *core)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>pauseAll</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>a172d554d753eff4746cac0672b3b08b1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>resumeAll</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>a0b0daa560a1baf1e89d13c79fdfa74ea</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>step</name>
      <anchorfile>d2/d23/classbsim_1_1_timer_scheduler.html</anchorfile>
      <anchor>a88ab32bb7ea02ade2a498cfea84729b8</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::TokenStyle</name>
    <filename>da/de6/classbsim_1_1_token_style.html</filename>
    <member kind="function">
      <type></type>
      <name>TokenStyle</name>
      <anchorfile>da/de6/classbsim_1_1_token_style.html</anchorfile>
      <anchor>a3a209698a6f73ef7583a6ddfa4d26dfb</anchor>
      <arglist>(QString name, QString description=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>name</name>
      <anchorfile>da/de6/classbsim_1_1_token_style.html</anchorfile>
      <anchor>a59acd587931075cf2b4988d08bbc3671</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>description</name>
      <anchorfile>da/de6/classbsim_1_1_token_style.html</anchorfile>
      <anchor>a299f3981887e946bc30da7bbbe6ac4f7</anchor>
      <arglist>(void) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Tokentyle</name>
    <filename>d3/d7f/class_tokentyle.html</filename>
  </compound>
  <compound kind="class">
    <name>bsim::TransmitEVT</name>
    <filename>d3/da0/classbsim_1_1_transmit_e_v_t.html</filename>
    <base>bsim::Scheduler::Event</base>
    <member kind="function">
      <type>void</type>
      <name>run</name>
      <anchorfile>d3/da0/classbsim_1_1_transmit_e_v_t.html</anchorfile>
      <anchor>ae8267efc1270f007484943c21360722c</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32</name>
    <filename>d9/d87/classbsim_1_1_u_int32.html</filename>
    <base>bsim::IHardRegister</base>
    <class kind="class">bsim::UInt32::Getter</class>
    <class kind="class">bsim::UInt32::Make</class>
    <class kind="class">bsim::UInt32::Setter</class>
    <member kind="function">
      <type></type>
      <name>UInt32</name>
      <anchorfile>d9/d87/classbsim_1_1_u_int32.html</anchorfile>
      <anchor>af99706f4664bba9ba649cb25ec3565c6</anchor>
      <arglist>(IComponent *comp, const Make &amp;make)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>read</name>
      <anchorfile>d9/d87/classbsim_1_1_u_int32.html</anchorfile>
      <anchor>aa45e5f7ca2ff4174862d6296cb5098c7</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>write</name>
      <anchorfile>d9/d87/classbsim_1_1_u_int32.html</anchorfile>
      <anchor>a914d38635e51f0f955a9e3a7fcc1a685</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Array</name>
    <filename>da/d90/classbsim_1_1_u_int32_array.html</filename>
    <base>bsim::IHardRegister</base>
    <class kind="class">bsim::UInt32Array::Bit</class>
    <class kind="class">bsim::UInt32Array::BitArray</class>
    <class kind="class">bsim::UInt32Array::BitEnum</class>
    <class kind="class">bsim::UInt32Array::BitField</class>
    <class kind="class">bsim::UInt32Array::Getter</class>
    <class kind="class">bsim::UInt32Array::Make</class>
    <class kind="class">bsim::UInt32Array::Setter</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>set</name>
      <anchorfile>da/d90/classbsim_1_1_u_int32_array.html</anchorfile>
      <anchor>ae1672baa00cc6abfe9793c1371467b64</anchor>
      <arglist>(QVariant value, int i=0)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>read</name>
      <anchorfile>da/d90/classbsim_1_1_u_int32_array.html</anchorfile>
      <anchor>ad97af2688b99b80c066781e8248ed6ef</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>write</name>
      <anchorfile>da/d90/classbsim_1_1_u_int32_array.html</anchorfile>
      <anchor>a257b4a916bf3c4e0f67cc64b6cd8199f</anchor>
      <arglist>(addr_t addr, void *data, int size)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32ControlRegister</name>
    <filename>dd/da4/classbsim_1_1_u_int32_control_register.html</filename>
    <base>bsim::UInt32</base>
    <class kind="class">bsim::UInt32ControlRegister::Bit</class>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>set</name>
      <anchorfile>dd/da4/classbsim_1_1_u_int32_control_register.html</anchorfile>
      <anchor>ae69cf9601a867b7c6e21fff3dfad2559</anchor>
      <arglist>(QVariant value, int i=0)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::UInt32Register</name>
    <filename>d6/d13/classbsim_1_1_u_int32_register.html</filename>
    <base>bsim::UInt32</base>
    <class kind="class">bsim::UInt32Register::Bit</class>
    <class kind="class">bsim::UInt32Register::BitArray</class>
    <class kind="class">bsim::UInt32Register::BitEnum</class>
    <class kind="class">bsim::UInt32Register::BitField</class>
    <member kind="function">
      <type></type>
      <name>UInt32Register</name>
      <anchorfile>d6/d13/classbsim_1_1_u_int32_register.html</anchorfile>
      <anchor>a0cd789417c1daee619a5ce90b0cd34c8</anchor>
      <arglist>(IComponent *comp, const Make &amp;make)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>set</name>
      <anchorfile>d6/d13/classbsim_1_1_u_int32_register.html</anchorfile>
      <anchor>ac921b940bb0a2518a0fa243e821f3e1e</anchor>
      <arglist>(QVariant value, int i=0)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>UnfoundComponent</name>
    <filename>d6/d66/class_unfound_component.html</filename>
  </compound>
  <compound kind="class">
    <name>UrlFilter</name>
    <filename>d2/db4/class_url_filter.html</filename>
    <base>RegExpFilter</base>
    <class kind="class">UrlFilter::HotSpot</class>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual RegExpFilter::HotSpot *</type>
      <name>newHotSpot</name>
      <anchorfile>d2/db4/class_url_filter.html</anchorfile>
      <anchor>a03dd16fcd3745ce89d38ba5b8da4d445</anchor>
      <arglist>(int, int, int, int)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::USART</name>
    <filename>de/df4/classbsim_1_1_u_s_a_r_t.html</filename>
    <base>bsim::IComponent</base>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>makeVisual</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ae71a8454160efc5f848b2ffc07bb90fd</anchor>
      <arglist>(VisualGraph &amp;graph)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>genHeader</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>aa001adb7582b4d6a5313dcd127751eb4</anchor>
      <arglist>(QTextStream &amp;out)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>getStaticConstants</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ad7540ad6c7bc3da305430394e5f5b2bb</anchor>
      <arglist>(QVector&lt; Constant &gt; &amp;csts) const </arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QString</type>
      <name>typePrefix</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>af566016fa2df36f7bdad50c8bf2a8efa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCR</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>acd2c13c7c927ea56843068017242e109</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setIER</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>a13d3e834fdc7a7947ed1355c577ad764</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setIDR</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ab54631bfa47a3210d6fd1fe86a7bda50</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTHR</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ac9480fb3ea9bb0160149cb05383ee4a2</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBRGR</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ad22e93d8fa32d18eadf7a58b214c75b0</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRTOR</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ad6b78545b5ed295454b62f740bf8baa9</anchor>
      <arglist>(uint32_t v)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getCSR</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>a09afbc06af9ada911200ac6eb0c651af</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>baudRateGen</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>a475b4d0273a693f93cb358874d62c8ed</anchor>
      <arglist>(uint32_t sckFRQ)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>us_resetR</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ae4abd85be604b55840b9269554e28153</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start_rcpt</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>a60c25b21381027b5f5faedadcab0bd19</anchor>
      <arglist>(uint32_t r_time)</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>it</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ad2a31570203410d50663d53aefa91960</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>uint32_t</type>
      <name>getConfiguration</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ae1bad9d01788e4038193b5f22c227aa5</anchor>
      <arglist>(bool transmission)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setConfiguration</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>a854e13c36443d9eb19bc1b360b4a9c24</anchor>
      <arglist>(SerialPin &amp;pn, QString id, QVariant value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sendOUT</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>a5c01df564f6f6e0464f2219c3be36c43</anchor>
      <arglist>(uint32_t thr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>endOfTransmission</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>a3c745b8af1bf2171765687acb843230b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>startTransmission</name>
      <anchorfile>de/df4/classbsim_1_1_u_s_a_r_t.html</anchorfile>
      <anchor>ab89bc7f4c472936426f4ef70f4bbbdf5</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::Visual</name>
    <filename>d7/dcb/classbsim_1_1_visual.html</filename>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>isHorizontal</name>
      <anchorfile>d7/dcb/classbsim_1_1_visual.html</anchorfile>
      <anchor>a36df5fee22d8ccd3496a3eb5d68b1e23</anchor>
      <arglist>(dir_t ori)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>isVertical</name>
      <anchorfile>d7/dcb/classbsim_1_1_visual.html</anchorfile>
      <anchor>afa775e4707c008e93092e38f0b6cd540</anchor>
      <arglist>(dir_t ori)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static dir_t</type>
      <name>parseDir</name>
      <anchorfile>d7/dcb/classbsim_1_1_visual.html</anchorfile>
      <anchor>a9060f55853607967478f0b3669da1405</anchor>
      <arglist>(QString text, dir_t def)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static QGraphicsItem *</type>
      <name>makeEdge</name>
      <anchorfile>d7/dcb/classbsim_1_1_visual.html</anchorfile>
      <anchor>ace6c301e418e483cbae0ef58b9026143</anchor>
      <arglist>(int x1, int y1, dir_t or1, int x2, int y2, dir_t or2)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::VisualComponent</name>
    <filename>de/d87/classbsim_1_1_visual_component.html</filename>
    <base>bsim::Visual</base>
    <member kind="function">
      <type></type>
      <name>VisualComponent</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a7b9c940853c39b0da55d71ea127f7f43</anchor>
      <arglist>(IComponent *component)</arglist>
    </member>
    <member kind="function">
      <type>IComponent *</type>
      <name>component</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a4d4d5ba424785913187b34163d7a3113</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const QMap&lt; Pin *, VisualPin * &gt; &amp;</type>
      <name>pins</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a6eecd8dd00281ba332658f0a300a50b8</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>add</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a4c9864dda8b1b90e43b7dcf0469d8712</anchor>
      <arglist>(VisualPin *pin)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>remove</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>abe953a1bd8af31e126ae1f1288432180</anchor>
      <arglist>(VisualPin *pin)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>make</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>abbb7dbda7caa89fc6cf01f26f459b837</anchor>
      <arglist>(QString name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>makeLabel</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a4f541da962f8e2254291cfe56fea1a6d</anchor>
      <arglist>(QString name)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>makeBox</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a1697de081d65c7d54974c12621a2ba03</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>makePins</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a8051c03e33b607f49e6daf4e7b688986</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>makePin</name>
      <anchorfile>de/d87/classbsim_1_1_visual_component.html</anchorfile>
      <anchor>a7bc89a1910a5f3f30ac951146dd1e9b1</anchor>
      <arglist>(VisualPin *pin)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::VisualGraph</name>
    <filename>d0/d12/classbsim_1_1_visual_graph.html</filename>
    <base>bsim::Visual</base>
    <member kind="function">
      <type></type>
      <name>VisualGraph</name>
      <anchorfile>d0/d12/classbsim_1_1_visual_graph.html</anchorfile>
      <anchor>ae7c8f47bef71c474c2718ece1884b2f1</anchor>
      <arglist>(Board &amp;board, QGraphicsScene &amp;scene)</arglist>
    </member>
    <member kind="function">
      <type>Board &amp;</type>
      <name>board</name>
      <anchorfile>d0/d12/classbsim_1_1_visual_graph.html</anchorfile>
      <anchor>a7e7d479c0e6051ba5347b2c4c7b7e5a5</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const QList&lt; VisualComponent * &gt; &amp;</type>
      <name>components</name>
      <anchorfile>d0/d12/classbsim_1_1_visual_graph.html</anchorfile>
      <anchor>a1e851120082330448022cf1f2dba7d94</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>d0/d12/classbsim_1_1_visual_graph.html</anchorfile>
      <anchor>af0107c875a013427169288cf5ac56da3</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>bsim::VisualPin</name>
    <filename>d6/ded/classbsim_1_1_visual_pin.html</filename>
    <base>bsim::Visual</base>
    <member kind="function">
      <type></type>
      <name>VisualPin</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a86a0de00ff1076912c0fde1379708d13</anchor>
      <arglist>(VisualComponent &amp;component, Pin *pin, dir_t dir, int offset, bool with_label=true)</arglist>
    </member>
    <member kind="function">
      <type>VisualComponent &amp;</type>
      <name>component</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a21c7bb81f5fb01526d05505af0dea1a0</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>Pin *</type>
      <name>pin</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a087a36a5c0b083ceb1a35a157cfb40b1</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>dir_t</type>
      <name>dir</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a486ad1a2a49f77ef221377e270597f9f</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>offset</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>aaf45e6876142e3047f1d02964d5570eb</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>withLabel</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a5b5b02d4942e8158e298a900843855b7</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>QString</type>
      <name>label</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a0b8bc908b50d7c142de903a952370349</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>parse</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>adf36a4d76a7ebc238c22e22e99745399</anchor>
      <arglist>(QDomElement element)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>x</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a6d56108a58f7dd2c02b1e6a5c1c3110c</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>y</name>
      <anchorfile>d6/ded/classbsim_1_1_visual_pin.html</anchorfile>
      <anchor>a050a747ef56ff494d7512fcee62fe568</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>Vt102Emulation</name>
    <filename>d2/dae/class_vt102_emulation.html</filename>
    <base>Emulation</base>
    <member kind="slot" virtualness="virtual">
      <type>virtual void</type>
      <name>sendMouseEvent</name>
      <anchorfile>d2/dae/class_vt102_emulation.html</anchorfile>
      <anchor>a698a56505682358cdfcd0424cc5e9eba</anchor>
      <arglist>(int buttons, int column, int line, int eventType)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>Vt102Emulation</name>
      <anchorfile>d2/dae/class_vt102_emulation.html</anchorfile>
      <anchor>a8dca3bf2c5b05637c87b216c6dad884a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>clearEntireScreen</name>
      <anchorfile>d2/dae/class_vt102_emulation.html</anchorfile>
      <anchor>a8b101ceb0cc80dfa7244a7f6b6bf6eb8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>reset</name>
      <anchorfile>d2/dae/class_vt102_emulation.html</anchorfile>
      <anchor>a41a7f225f13914e28067c07e4402fafa</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual char</type>
      <name>getErase</name>
      <anchorfile>d2/dae/class_vt102_emulation.html</anchorfile>
      <anchor>a7a55b3b036445d93d06ab1cdeaa2acba</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>receiveChar</name>
      <anchorfile>d2/dae/class_vt102_emulation.html</anchorfile>
      <anchor>a6bf0efc39a77c1c4e079b60815c2e189</anchor>
      <arglist>(int cc)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>bsim</name>
    <filename>de/def/namespacebsim.html</filename>
    <class kind="class">bsim::AbstractRegisterNode</class>
    <class kind="class">bsim::ActionMonitor</class>
    <class kind="class">bsim::ADC</class>
    <class kind="class">bsim::AddressBreakPoint</class>
    <class kind="class">bsim::AIC</class>
    <class kind="class">bsim::ARM</class>
    <class kind="class">bsim::ARMProgram</class>
    <class kind="class">bsim::ArrayGetterImpl</class>
    <class kind="class">bsim::ArrayHardRegister32</class>
    <class kind="class">bsim::ArraySetterImpl</class>
    <class kind="class">bsim::AssemblyHighlighter</class>
    <class kind="class">bsim::AssemblySyntax</class>
    <class kind="class">bsim::BankNode</class>
    <class kind="class">bsim::Bit</class>
    <class kind="class">bsim::BitField</class>
    <class kind="class">bsim::BitFieldInArray</class>
    <class kind="class">bsim::BitInArray</class>
    <class kind="class">bsim::BitVector</class>
    <class kind="class">bsim::Board</class>
    <class kind="class">bsim::BoardView</class>
    <class kind="class">bsim::BreakPoint</class>
    <class kind="class">bsim::Breakpoint</class>
    <class kind="class">bsim::BreakPointListener</class>
    <class kind="class">bsim::BreakPointManager</class>
    <class kind="class">bsim::Button</class>
    <class kind="class">bsim::ButtonItem</class>
    <class kind="class">bsim::CENTEREvent</class>
    <class kind="class">bsim::CHighlighter</class>
    <class kind="class">bsim::CodeViewer</class>
    <class kind="class">bsim::ComponentException</class>
    <class kind="class">bsim::ComponentNode</class>
    <class kind="class">bsim::Configuration</class>
    <class kind="class">bsim::Constant</class>
    <class kind="class">bsim::ConvertEVT</class>
    <class kind="class">bsim::Core</class>
    <class kind="class">bsim::CSyntax</class>
    <class kind="class">bsim::CycleView</class>
    <class kind="class">bsim::DefaultMonitor</class>
    <class kind="class">bsim::DisasmSource</class>
    <class kind="class">bsim::DUTYEvent</class>
    <class kind="class">bsim::EnablePin</class>
    <class kind="class">bsim::Exception</class>
    <class kind="class">bsim::FileSource</class>
    <class kind="class">bsim::FileSourceException</class>
    <class kind="class">bsim::Getter</class>
    <class kind="class">bsim::GetterImpl</class>
    <class kind="class">bsim::GetterImplWithSoftIO</class>
    <class kind="class">bsim::HardRegister32</class>
    <class kind="class">bsim::HardRegister32WithSoftIO</class>
    <class kind="class">bsim::Highlighter</class>
    <class kind="class">bsim::IComponent</class>
    <class kind="class">bsim::IHardRegister</class>
    <class kind="class">bsim::IMonitor</class>
    <class kind="class">bsim::IndexedRegister</class>
    <class kind="class">bsim::inPin</class>
    <class kind="class">bsim::IPIOConnected</class>
    <class kind="class">bsim::IRegister</class>
    <class kind="class">bsim::ISource</class>
    <class kind="class">bsim::IView</class>
    <class kind="class">bsim::LED</class>
    <class kind="class">bsim::LoadException</class>
    <class kind="class">bsim::MainWindow</class>
    <class kind="class">bsim::ManSensor</class>
    <class kind="class">bsim::MemoryDockWidget</class>
    <class kind="class">bsim::MethodPtr</class>
    <class kind="class">bsim::MethodPtrImpl</class>
    <class kind="class">bsim::MyHighlighter</class>
    <class kind="class">bsim::outPin</class>
    <class kind="class">bsim::ParentNode</class>
    <class kind="class">bsim::Path</class>
    <class kind="class">bsim::PeriphPin</class>
    <class kind="class">bsim::Pin</class>
    <class kind="class">bsim::PIO</class>
    <class kind="class">bsim::PIOPin</class>
    <class kind="class">bsim::Program</class>
    <class kind="class">bsim::PropLED</class>
    <class kind="class">bsim::PWM</class>
    <class kind="class">bsim::PWMEvent</class>
    <class kind="class">bsim::RCEvent</class>
    <class kind="class">bsim::ReceptEVT</class>
    <class kind="class">bsim::RegisterDockWidget</class>
    <class kind="class">bsim::RegisterNode</class>
    <class kind="class">bsim::Scheduler</class>
    <class kind="class">bsim::SerialPin</class>
    <class kind="class">bsim::Setter</class>
    <class kind="class">bsim::SetterImpl</class>
    <class kind="class">bsim::SetterImplWithSoftIO</class>
    <class kind="class">bsim::SleepEVT</class>
    <class kind="class">bsim::SourceBreakPoint</class>
    <class kind="class">bsim::StatusRegister</class>
    <class kind="class">bsim::synPin</class>
    <class kind="class">bsim::TC</class>
    <class kind="class">bsim::TCEvent</class>
    <class kind="class">bsim::TCPin</class>
    <class kind="class">bsim::Term</class>
    <class kind="class">bsim::TermModel</class>
    <class kind="class">bsim::TermWidget</class>
    <class kind="class">bsim::TimerScheduler</class>
    <class kind="class">bsim::TokenStyle</class>
    <class kind="class">bsim::TransmitEVT</class>
    <class kind="class">bsim::UInt32</class>
    <class kind="class">bsim::UInt32Array</class>
    <class kind="class">bsim::UInt32ControlRegister</class>
    <class kind="class">bsim::UInt32Register</class>
    <class kind="class">bsim::USART</class>
    <class kind="class">bsim::Visual</class>
    <class kind="class">bsim::VisualComponent</class>
    <class kind="class">bsim::VisualGraph</class>
    <class kind="class">bsim::VisualPin</class>
    <member kind="function">
      <type>IComponent *</type>
      <name>init</name>
      <anchorfile>de/def/namespacebsim.html</anchorfile>
      <anchor>a5cc6e97a1c57081e95dc3343677a3616</anchor>
      <arglist>(Board &amp;board, QDomElement xml, QString name)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>parseUInt</name>
      <anchorfile>de/def/namespacebsim.html</anchorfile>
      <anchor>ac2cd71f8d6f1ba0d5238b8b104f0d807</anchor>
      <arglist>(QString str, bool &amp;ok)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>components</name>
    <title>Components</title>
    <filename>d5/d7f/group__components.html</filename>
    <class kind="class">bsim::PropLED</class>
    <class kind="class">bsim::ADC</class>
    <class kind="class">bsim::AIC</class>
    <class kind="class">bsim::Button</class>
    <class kind="class">bsim::LED</class>
    <class kind="class">bsim::ManSensor</class>
    <class kind="class">bsim::PIO</class>
    <class kind="class">bsim::PWM</class>
    <class kind="class">bsim::TC</class>
    <class kind="class">bsim::USART</class>
    <class kind="class">bsim::Core</class>
    <docanchor file="d5/d7f/group__components" title="Board Description Format">board</docanchor>
    <docanchor file="d5/d7f/group__components" title="Adding a Component Plugin">plugin</docanchor>
  </compound>
</tagfile>
