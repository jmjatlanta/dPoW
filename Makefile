INSTALLDIR=bin
SCRIPT_SRC=scripts

all:
	$(MAKE) -C iguana all

$(INSTALLDIR):
	mkdir $@

$(INSTALLDIR)/coins:
	mkdir $@

clean:
	$(MAKE) -C iguana clean
	$(RM) -Rf $(INSTALLDIR)

install: $(INSTALLDIR) \
		$(INSTALLDIR)/coins \
		all \
		iguana/iguana
	cp iguana/iguana $(INSTALLDIR)
	cp $(SCRIPT_SRC)/m_notary_main $(INSTALLDIR)
	cp $(SCRIPT_SRC)/m_notary_3rdparty $(INSTALLDIR)
	cp $(SCRIPT_SRC)/add_coins $(INSTALLDIR)
	cp $(SCRIPT_SRC)/dpowassets $(INSTALLDIR)
	cp $(SCRIPT_SRC)/coins/chips_7779 $(INSTALLDIR)/coins	
	cp $(SCRIPT_SRC)/coins/emc2_7779 $(INSTALLDIR)/coins
	cp $(SCRIPT_SRC)/coins/vrsc_7779 $(INSTALLDIR)/coins
	cp $(SCRIPT_SRC)/coins/aya_7779 $(INSTALLDIR)/coins
	cp $(SCRIPT_SRC)/coins/mcl_7779 $(INSTALLDIR)/coins
	cp $(SCRIPT_SRC)/coins/sfusd_7779 $(INSTALLDIR)/coins
	cp $(SCRIPT_SRC)/coins/tokel_7779 $(INSTALLDIR)/coins
	cp $(SCRIPT_SRC)/coins/mil_7779 $(INSTALLDIR)/coins
	