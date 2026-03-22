.class public interface abstract Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
.super Ljava/lang/Object;
.source "Proguard"


# virtual methods
.method public abstract getScreenUrl()Ljava/lang/String;
.end method

.method public abstract getTrackProperties()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
