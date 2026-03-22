.class public Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo$TPPlayerDrmType;
    }
.end annotation


# static fields
.field public static final TP_PLAYER_DRM_TYPE_CHACHA20:I = 0x8
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapReportDrmType;
        value = 0x8
    .end annotation
.end field

.field public static final TP_PLAYER_DRM_TYPE_CHINA_DRM:I = 0x40
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapReportDrmType;
        value = 0x40
    .end annotation
.end field

.field public static final TP_PLAYER_DRM_TYPE_NONE:I = -0x1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapReportDrmType;
        value = -0x1
    .end annotation
.end field

.field public static final TP_PLAYER_DRM_TYPE_TAIHE:I = 0x4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapReportDrmType;
        value = 0x4
    .end annotation
.end field

.field public static final TP_PLAYER_DRM_TYPE_WIDEVINE:I = 0x20
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapReportDrmType;
        value = 0x20
    .end annotation
.end field


# instance fields
.field public drmAbility:I

.field public drmComponentName:Ljava/lang/String;

.field public drmGetKeyReqEndTimeMs:J

.field public drmGetKeyReqStartTimeMs:J

.field public drmGetProvisionReqEndTimeMs:J

.field public drmGetProvisionReqStartTimeMs:J

.field public drmOpenSessionEndTimeMs:J

.field public drmOpenSessionStartTimeMs:J

.field public drmPrepareEndTimeMs:J

.field public drmPrepareStartTimeMs:J

.field public drmProvideKeyRespEndTimeMs:J

.field public drmProvideKeyRespStartTimeMs:J

.field public drmProvideProvisionRespEndTimeMs:J

.field public drmProvideProvisionRespStartTimeMs:J

.field public drmRecvKeyRespTimeMs:J

.field public drmRecvProvisionRespTimeMs:J

.field public drmSecureLevel:I

.field public drmSendKeyReqTimeMs:J

.field public drmSendProvisionReqTimeMs:J

.field public drmSupportSecureDecoder:I

.field public drmSupportSecureDecrypt:I

.field public drmType:I
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo$TPPlayerDrmType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmAbility:I

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSupportSecureDecoder:I

    .line 8
    .line 9
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSupportSecureDecrypt:I

    .line 10
    .line 11
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSecureLevel:I

    .line 12
    .line 13
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmType:I

    .line 14
    .line 15
    return-void
.end method
