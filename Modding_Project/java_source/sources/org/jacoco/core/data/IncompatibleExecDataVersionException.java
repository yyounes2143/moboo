package org.jacoco.core.data;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class IncompatibleExecDataVersionException extends IOException {
    private static final long serialVersionUID = 1;
    private final int actualVersion;

    public IncompatibleExecDataVersionException(int i) {
        super(String.format("Cannot read execution data version 0x%x. This version of JaCoCo uses execution data version 0x%x.", Integer.valueOf(i), Integer.valueOf(ExecutionDataWriter.f13503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)));
        this.actualVersion = i;
    }

    public int getActualVersion() {
        return this.actualVersion;
    }

    public int getExpectedVersion() {
        return ExecutionDataWriter.f13503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
