package com.unity3d.ads.adplayer;

import android.webkit.WebView;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\t\u0007\b\t\n\u000b\f\r\u000e\u000fB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\t\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018¨\u0006\u0019"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage;", "", "opportunityId", "", "(Ljava/lang/String;)V", "getOpportunityId", "()Ljava/lang/String;", "DisplayDestroyed", "DisplayError", "DisplayFinishRequest", "DisplayReady", "FocusChanged", "SetOrientation", "VisibilityChanged", "WebViewInstanceRequest", "WebViewInstanceResponse", "Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayDestroyed;", "Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayError;", "Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayFinishRequest;", "Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;", "Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;", "Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;", "Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;", "Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceRequest;", "Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public abstract class DisplayMessage {
    @NotNull
    private final String opportunityId;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayDestroyed;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "(Ljava/lang/String;)V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class DisplayDestroyed extends DisplayMessage {
        public DisplayDestroyed(@NotNull String str) {
            super(str, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayError;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "reason", "(Ljava/lang/String;Ljava/lang/String;)V", "getReason", "()Ljava/lang/String;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class DisplayError extends DisplayMessage {
        @NotNull
        private final String reason;

        public DisplayError(@NotNull String str, @NotNull String str2) {
            super(str, null);
            this.reason = str2;
        }

        @NotNull
        public final String getReason() {
            return this.reason;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayFinishRequest;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "(Ljava/lang/String;)V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class DisplayFinishRequest extends DisplayMessage {
        public DisplayFinishRequest(@NotNull String str) {
            super(str, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007R!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "showOptions", "", "", "(Ljava/lang/String;Ljava/util/Map;)V", "getShowOptions", "()Ljava/util/Map;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class DisplayReady extends DisplayMessage {
        @Nullable
        private final Map<String, Object> showOptions;

        public DisplayReady(@NotNull String str, @Nullable Map<String, ? extends Object> map) {
            super(str, null);
            this.showOptions = map;
        }

        @Nullable
        public final Map<String, Object> getShowOptions() {
            return this.showOptions;
        }

        public /* synthetic */ DisplayReady(String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : map);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "isFocused", "", "(Ljava/lang/String;Z)V", "()Z", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class FocusChanged extends DisplayMessage {
        private final boolean isFocused;

        public FocusChanged(@NotNull String str, boolean z) {
            super(str, null);
            this.isFocused = z;
        }

        public final boolean isFocused() {
            return this.isFocused;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "orientation", "", "(Ljava/lang/String;I)V", "getOrientation", "()I", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class SetOrientation extends DisplayMessage {
        private final int orientation;

        public SetOrientation(@NotNull String str, int i) {
            super(str, null);
            this.orientation = i;
        }

        public final int getOrientation() {
            return this.orientation;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "isVisible", "", "(Ljava/lang/String;Z)V", "()Z", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class VisibilityChanged extends DisplayMessage {
        private final boolean isVisible;

        public VisibilityChanged(@NotNull String str, boolean z) {
            super(str, null);
            this.isVisible = z;
        }

        public final boolean isVisible() {
            return this.isVisible;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceRequest;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "(Ljava/lang/String;)V", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class WebViewInstanceRequest extends DisplayMessage {
        public WebViewInstanceRequest(@NotNull String str) {
            super(str, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;", "Lcom/unity3d/ads/adplayer/DisplayMessage;", "opportunityId", "", "webView", "Landroid/webkit/WebView;", "(Ljava/lang/String;Landroid/webkit/WebView;)V", "getWebView", "()Landroid/webkit/WebView;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class WebViewInstanceResponse extends DisplayMessage {
        @NotNull
        private final WebView webView;

        public WebViewInstanceResponse(@NotNull String str, @NotNull WebView webView) {
            super(str, null);
            this.webView = webView;
        }

        @NotNull
        public final WebView getWebView() {
            return this.webView;
        }
    }

    public /* synthetic */ DisplayMessage(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    public final String getOpportunityId() {
        return this.opportunityId;
    }

    private DisplayMessage(String str) {
        this.opportunityId = str;
    }
}
