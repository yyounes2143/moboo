package com.facebook.ads.redexgen.X;

import android.widget.MediaController;
/* renamed from: com.facebook.ads.redexgen.X.eL  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1437eL implements MediaController.MediaPlayerControl {
    public final /* synthetic */ CM A00;

    public C1437eL(CM cm) {
        this.A00 = cm;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekForward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getAudioSessionId() {
        C1431eF c1431eF;
        C1431eF c1431eF2;
        c1431eF = this.A00.A0C;
        if (c1431eF != null) {
            c1431eF2 = this.A00.A0C;
            return c1431eF2.A04();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getBufferPercentage() {
        C1431eF c1431eF;
        C1431eF c1431eF2;
        c1431eF = this.A00.A0C;
        if (c1431eF != null) {
            c1431eF2 = this.A00.A0C;
            return c1431eF2.A05();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getCurrentPosition() {
        return this.A00.getCurrentPosition();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getDuration() {
        return this.A00.getDuration();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean isPlaying() {
        C1431eF c1431eF;
        C1431eF c1431eF2;
        c1431eF = this.A00.A0C;
        if (c1431eF != null) {
            c1431eF2 = this.A00.A0C;
            if (c1431eF2.A0J()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        InterfaceC1447eV interfaceC1447eV;
        InterfaceC1447eV interfaceC1447eV2;
        interfaceC1447eV = this.A00.A0F;
        if (interfaceC1447eV != null) {
            interfaceC1447eV2 = this.A00.A0F;
            interfaceC1447eV2.AE9();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void seekTo(int i) {
        this.A00.seekTo(i);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void start() {
        InterfaceC1447eV interfaceC1447eV;
        InterfaceC1447eV interfaceC1447eV2;
        interfaceC1447eV = this.A00.A0F;
        if (interfaceC1447eV != null) {
            interfaceC1447eV2 = this.A00.A0F;
            interfaceC1447eV2.AEA();
        }
    }
}
