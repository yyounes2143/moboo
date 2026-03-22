package com.jeremyliao.liveeventbus.core;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class Console {
    private Console() {
    }

    public static String getInfo() {
        return LiveEventBusCore.get().console.getConsoleInfo();
    }
}
