package com.jeremyliao.liveeventbus.ipc.core;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface Processor {
    Object createFromBundle(Bundle bundle) throws Exception;

    boolean writeToBundle(Bundle bundle, Object obj) throws Exception;
}
