package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class SizeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 7388077430788600069L;
    private final boolean acceptLarger;
    private final long size;

    public SizeFileFilter(long j) {
        this(j, true);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        boolean z;
        if (file.length() < this.size) {
            z = true;
        } else {
            z = false;
        }
        if (this.acceptLarger) {
            if (z) {
                return false;
            }
            return true;
        }
        return z;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        String str;
        if (this.acceptLarger) {
            str = ">=";
        } else {
            str = "<";
        }
        return super.toString() + "(" + str + this.size + ")";
    }

    public SizeFileFilter(long j, boolean z) {
        if (j >= 0) {
            this.size = j;
            this.acceptLarger = z;
            return;
        }
        throw new IllegalArgumentException("The size must be non-negative");
    }
}
