package com.applovin.mediation;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface MaxMediatedNetworkInfo {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum InitializationStatus {
        NOT_INITIALIZED(-4),
        DOES_NOT_APPLY(-3),
        INITIALIZING(-2),
        INITIALIZED_UNKNOWN(-1),
        INITIALIZED_FAILURE(0),
        INITIALIZED_SUCCESS(1);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3837a;

        InitializationStatus(int i) {
            this.f3837a = i;
        }

        public static InitializationStatus fromCode(int i) {
            InitializationStatus[] values;
            for (InitializationStatus initializationStatus : values()) {
                if (initializationStatus.getCode() == i) {
                    return initializationStatus;
                }
            }
            return NOT_INITIALIZED;
        }

        public int getCode() {
            return this.f3837a;
        }
    }

    String getAdapterClassName();

    String getAdapterVersion();

    InitializationStatus getInitializationStatus();

    String getName();

    String getSdkVersion();
}
