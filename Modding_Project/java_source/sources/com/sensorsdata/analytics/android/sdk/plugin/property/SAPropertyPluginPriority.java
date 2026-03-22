package com.sensorsdata.analytics.android.sdk.plugin.property;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAPropertyPluginPriority {
    private final long priority;
    public static SAPropertyPluginPriority LOW = new SAPropertyPluginPriority(250);
    public static SAPropertyPluginPriority DEFAULT = new SAPropertyPluginPriority(500);
    public static SAPropertyPluginPriority HIGH = new SAPropertyPluginPriority(750);
    protected static SAPropertyPluginPriority SUPER = new SAPropertyPluginPriority(1431656640);

    public SAPropertyPluginPriority(long j) {
        this.priority = j;
    }

    public long getPriority() {
        return this.priority;
    }
}
