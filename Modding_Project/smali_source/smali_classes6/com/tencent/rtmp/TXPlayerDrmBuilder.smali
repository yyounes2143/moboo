.class public Lcom/tencent/rtmp/TXPlayerDrmBuilder;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static DEFAULT_CN_PROVISION_URL:Ljava/lang/String;

.field private static DEFAULT_COM_PROVISION_URL:Ljava/lang/String;


# instance fields
.field mDeviceCertificateUrl:Ljava/lang/String;

.field mKeyLicenseUrl:Ljava/lang/String;

.field mPlayUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->initProvision()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->initProvision()V

    .line 5
    iput-object p1, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mKeyLicenseUrl:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mPlayUrl:Ljava/lang/String;

    return-void
.end method

.method private initProvision()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->DEFAULT_COM_PROVISION_URL:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "aHR0cHM6Ly93d3cuZ29vZ2xlYXBpcy5jb20vY2VydGlmaWNhdGVwcm92aXNpb25pbmcvdjEvZGV2aWNlY2VydGlmaWNhdGVzL2NyZWF0ZT9rZXk9QUl6YVN5Qi01T0xLVHgyaVU1bWtvMThEZmR3SzU2MTFKSWpiVWhF"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/tencent/liteav/txcplayer/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->DEFAULT_COM_PROVISION_URL:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->DEFAULT_CN_PROVISION_URL:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v0, "aHR0cHM6Ly93d3cuZ29vZ2xlYXBpcy5jbi9jZXJ0aWZpY2F0ZXByb3Zpc2lvbmluZy92MS9kZXZpY2VjZXJ0aWZpY2F0ZXMvY3JlYXRlP2tleT1BSXphU3lCLTVPTEtUeDJpVTVta28xOERmZHdLNTYxMUpJamJVaEU="

    .line 26
    .line 27
    invoke-static {v0}, Lcom/tencent/liteav/txcplayer/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->DEFAULT_CN_PROVISION_URL:Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public getDeviceCertificateUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mDeviceCertificateUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mDeviceCertificateUrl:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/tencent/rtmp/TXPlayerGlobalSetting;->getDrmProvisionEnv()Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;->DRM_PROVISION_ENV_COM:Lcom/tencent/rtmp/TXPlayerGlobalSetting$DrmProvisionEnv;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->DEFAULT_COM_PROVISION_URL:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    sget-object v0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->DEFAULT_CN_PROVISION_URL:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method public getKeyLicenseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mKeyLicenseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mPlayUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDeviceCertificateUrl(Ljava/lang/String;)Lcom/tencent/rtmp/TXPlayerDrmBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mDeviceCertificateUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKeyLicenseUrl(Ljava/lang/String;)Lcom/tencent/rtmp/TXPlayerDrmBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mKeyLicenseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayUrl(Ljava/lang/String;)Lcom/tencent/rtmp/TXPlayerDrmBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mPlayUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TXPlayerDrmBuilder{deviceCertificateUrl=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mDeviceCertificateUrl:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x27

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", licenseUrl=\'"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mKeyLicenseUrl:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", playUrl=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/tencent/rtmp/TXPlayerDrmBuilder;->mPlayUrl:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x7d

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
