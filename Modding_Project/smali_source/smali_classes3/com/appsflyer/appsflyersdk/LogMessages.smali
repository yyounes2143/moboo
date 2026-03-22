.class public final Lcom/appsflyer/appsflyersdk/LogMessages;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final ACTIVITY_NOT_ATTACHED_TO_ENGINE:Ljava/lang/String; = "Activity isn\'t attached to the flutter engine"

.field public static final AF_DEV_KEY_IS_EMPTY:Ljava/lang/String; = "AppsFlyer dev key is empty"

.field public static final ERROR_WHILE_SETTING_CONSENT:Ljava/lang/String; = "Error while setting consent data: "

.field public static final METHOD_CHANNEL_IS_NULL:Ljava/lang/String; = "mMethodChannel is null, cannot invoke the callback"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string v1, "LogMessages class should not be instantiated"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method
