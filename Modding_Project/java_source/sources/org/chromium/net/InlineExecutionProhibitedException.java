package org.chromium.net;

import java.util.concurrent.RejectedExecutionException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class InlineExecutionProhibitedException extends RejectedExecutionException {
    public InlineExecutionProhibitedException() {
        super("Inline execution is prohibited for this request");
    }
}
