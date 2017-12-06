import ctcsound
cs = ctcsound.Csound()

ret = cs.compile_("csound", "chpt1.csd")
if ret == ctcsound.CSOUND_SUCCESS:
    cs.perform()
    cs.reset()
