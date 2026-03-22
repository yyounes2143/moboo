package com.mbridge.msdk.dycreator.error;

import androidx.media3.common.PlaybackException;
import com.tencent.vod.flutter.FTXEvent;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public enum b {
    NOT_FOUND_VIEWOPTION(FTXEvent.ERROR_PIP_LOWER_VERSION, "ViewOption is null"),
    NOT_FOUND_CONTEXT(-102, "context is null"),
    FILE_CREATE_VIEW_FILE(-103, "file create view is null"),
    CAMPAIGNEX_IS_NULL(-104, "Campaign size only one"),
    NOT_FOUND_CAMPAIGN(PlaybackException.ERROR_CODE_PARENTAL_CONTROL_RESTRICTED, "campaign is null"),
    NOT_FOUND_DYNAMIC_FILE(PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION, "dynamic file is not exits"),
    BIND_DATA_FILE_OR_DIR(PlaybackException.ERROR_CODE_SKIP_LIMIT_REACHED, "data file or file dir is not exits "),
    NOT_FOUND_DYNAMIC_OPTION(PlaybackException.ERROR_CODE_SETUP_REQUIRED, "dynamic_option is not exits");
    

    /* renamed from: a  reason: collision with root package name */
    private int f8909a;
    private String b;

    b(int i, String str) {
        this.f8909a = i;
        this.b = str;
    }

    public int b() {
        return this.f8909a;
    }

    public String c() {
        return this.b;
    }
}
