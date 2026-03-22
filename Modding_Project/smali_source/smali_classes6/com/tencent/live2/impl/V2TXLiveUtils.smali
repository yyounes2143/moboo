.class public Lcom/tencent/live2/impl/V2TXLiveUtils;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/live2/impl/V2TXLiveUtils$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V2TXLiveUtils"

.field public static final TRTC_ADDRESS1:Ljava/lang/String;

.field public static final TRTC_ADDRESS2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cm9vbTovL2Nsb3VkLnRlbmNlbnQuY29tL3J0Yw=="

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils;->TRTC_ADDRESS1:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "cm9vbTovL3J0Yy50ZW5jZW50LmNvbQ=="

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils;->TRTC_ADDRESS2:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getBitrateByResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)Lcom/tencent/live2/impl/V2TXLiveUtils$a;
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/16 v0, 0x258

    .line 10
    .line 11
    const/16 v1, 0x190

    .line 12
    .line 13
    const/16 v2, 0xfa

    .line 14
    .line 15
    const/16 v3, 0x15e

    .line 16
    .line 17
    const/16 v4, 0x384

    .line 18
    .line 19
    const/16 v5, 0x320

    .line 20
    .line 21
    const/16 v6, 0x5dc

    .line 22
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    move v0, v5

    .line 27
    move p0, v6

    .line 28
    goto :goto_2

    .line 29
    :pswitch_1
    const/16 v0, 0x9c4

    .line 30
    .line 31
    const/16 p0, 0xbb8

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :pswitch_2
    const/16 v0, 0x3e8

    .line 35
    .line 36
    const/16 p0, 0x708

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :pswitch_3
    const/16 v0, 0x1f4

    .line 40
    .line 41
    :pswitch_4
    move p0, v4

    .line 42
    goto :goto_2

    .line 43
    :pswitch_5
    const/16 v0, 0x226

    .line 44
    .line 45
    :goto_0
    move p0, v0

    .line 46
    move v0, v3

    .line 47
    goto :goto_2

    .line 48
    :pswitch_6
    move p0, v1

    .line 49
    :goto_1
    move v0, v2

    .line 50
    goto :goto_2

    .line 51
    :pswitch_7
    move p0, v0

    .line 52
    move v0, v1

    .line 53
    goto :goto_2

    .line 54
    :pswitch_8
    const/16 v0, 0x177

    .line 55
    .line 56
    move p0, v0

    .line 57
    goto :goto_1

    .line 58
    :pswitch_9
    const/16 v0, 0x20d

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_a
    const/16 v0, 0xc8

    .line 62
    .line 63
    const/16 p0, 0x12c

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :pswitch_b
    const/16 v0, 0x64

    .line 67
    .line 68
    const/16 p0, 0x96

    .line 69
    .line 70
    :goto_2
    new-instance v1, Lcom/tencent/live2/impl/V2TXLiveUtils$a;

    .line 71
    .line 72
    invoke-direct {v1, v0, p0}, Lcom/tencent/live2/impl/V2TXLiveUtils$a;-><init>(II)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLiveMode(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;
    .locals 2

    .line 1
    const-string v0, "trtc://"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "V2TXLiveUtils"

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils;->TRTC_ADDRESS1:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils;->TRTC_ADDRESS2:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "parseLiveMode: rtmp."

    .line 29
    .line 30
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;->TXLiveMode_RTMP:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    :goto_0
    const-string p0, "parseLiveMode: rtc."

    .line 37
    .line 38
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;->TXLiveMode_RTC:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;

    .line 42
    .line 43
    return-object p0
.end method

.method public static removeURLSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    const-string v2, "roomsig"

    .line 11
    .line 12
    const-string v3, "privatemapkey"

    .line 13
    .line 14
    const-string v4, "usersig"

    .line 15
    .line 16
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move v3, v1

    .line 21
    :goto_0
    const/4 v4, 0x3

    .line 22
    if-ge v3, v4, :cond_3

    .line 23
    .line 24
    aget-object v4, v2, v3

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    aget-object v4, v2, v3

    .line 33
    .line 34
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, -0x1

    .line 39
    if-eq v4, v5, :cond_2

    .line 40
    .line 41
    const-string v6, "&"

    .line 42
    .line 43
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-ne v6, v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v2

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_2
    :goto_1
    add-int/2addr v3, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    return-object p0

    .line 82
    :goto_2
    const-string v3, "remove url sensitive info failed."

    .line 83
    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v2, v0, v1

    .line 87
    .line 88
    const-string v1, "V2TXLiveUtils"

    .line 89
    .line 90
    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object p0
.end method
