
subdirs:=`ls -l | awk -F' +' '/^d/{print $$NF}'`

PYTHON=`which python`

MAKEFLAGS+=--no-print-directory

all: $(patsubst %.py,%.pyo,$(wildcard *.py))
	@for i in $(subdirs); do \
		$(MAKE) -C $$i all; \
	 done

%.pyo: %.py
	@echo "PYTHON  $<"
	@$(PYTHON) -O -m py_compile $<
	
clean:
	@echo "RM      *~"
	@rm *~ -f
	@echo "RM      *.py[co]"
	@rm *.py[co] -f
	@for i in $(subdirs); do \
		$(MAKE) -C $$i clean; \
	 done

.PHONY:all, clean
