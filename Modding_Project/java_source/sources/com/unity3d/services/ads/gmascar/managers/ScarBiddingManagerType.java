package com.unity3d.services.ads.gmascar.managers;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public enum ScarBiddingManagerType {
    DISABLED("dis"),
    EAGER("eag");
    
    private final String name;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Constants {
        private static final String DIS = "dis";
        private static final String EAG = "eag";

        private Constants() {
        }
    }

    ScarBiddingManagerType(String str) {
        this.name = str;
    }

    public static ScarBiddingManagerType fromName(String str) {
        int hashCode = str.hashCode();
        if (hashCode != 99470) {
            if (hashCode == 100171 && str.equals("eag")) {
                return EAGER;
            }
        } else {
            str.equals("dis");
        }
        return DISABLED;
    }

    public String getName() {
        return this.name;
    }
}
