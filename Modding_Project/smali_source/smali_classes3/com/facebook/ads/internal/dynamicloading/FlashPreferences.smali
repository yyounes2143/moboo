.class public Lcom/facebook/ads/internal/dynamicloading/FlashPreferences;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final PREFERENCES_FILE:Ljava/lang/String; = "com.facebook.ads.flash"

.field public static final SP_KEY_FLASH_CONFIG:Ljava/lang/String; = "flash_config"

.field public static final SP_KEY_LAST_CONFIG_UPDATE_TIMESTAMP:Ljava/lang/String; = "update_timestamp"

.field public static final SP_KEY_LAST_RESULT:Ljava/lang/String; = "last_result"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    const-string v0, "com.facebook.ads.flash"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
