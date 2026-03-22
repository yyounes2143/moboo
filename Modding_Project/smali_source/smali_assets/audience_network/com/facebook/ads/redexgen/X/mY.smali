.class public final Lcom/facebook/ads/redexgen/X/mY;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Be;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Ljava/lang/Exception;

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/BU;

.field public final A04:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

.field public final A05:Lcom/facebook/ads/redexgen/X/Bf;

.field public final A06:Z

.field public volatile A07:Lcom/facebook/ads/redexgen/X/BQ;

.field public volatile A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3156
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WULC9DYlvQgZjojDU2bdZ9xs7wQbeGsA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0RzPpdpgLbDOZ8gUAj9sr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fywSSsB8oN823aa6hQ2avodpE9Fj6EUo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rQ4mhJZFramri"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "thNzrz2pgMkLR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sKcdOZc1ZRugYqEHWVRtFgFPdRxve1CE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "006dlWDsgbMi7GTsUIBgGpVxQZYkiOjN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1EnGqdZRllbwfzBFLuDlK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mY;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/Bf;Lcom/facebook/ads/redexgen/X/BU;ZILcom/facebook/ads/redexgen/X/BQ;)V
    .locals 2

    .line 98865
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98866
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mY;->A04:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    .line 98867
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/mY;->A05:Lcom/facebook/ads/redexgen/X/Bf;

    .line 98868
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/mY;->A03:Lcom/facebook/ads/redexgen/X/BU;

    .line 98869
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/mY;->A06:Z

    .line 98870
    iput p5, p0, Lcom/facebook/ads/redexgen/X/mY;->A02:I

    .line 98871
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/mY;->A07:Lcom/facebook/ads/redexgen/X/BQ;

    .line 98872
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/mY;->A00:J

    .line 98873
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/Bf;Lcom/facebook/ads/redexgen/X/BU;ZILcom/facebook/ads/redexgen/X/BQ;Lcom/facebook/ads/redexgen/X/BN;)V
    .locals 0

    .line 98874
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/mY;-><init>(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;Lcom/facebook/ads/redexgen/X/Bf;Lcom/facebook/ads/redexgen/X/BU;ZILcom/facebook/ads/redexgen/X/BQ;)V

    return-void
.end method

.method public static A00(I)I
    .locals 1

    .line 98875
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 p0, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/mY;)Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
    .locals 0

    .line 98876
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mY;->A04:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/mY;)Ljava/lang/Exception;
    .locals 0

    .line 98877
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/mY;->A01:Ljava/lang/Exception;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/mY;)Z
    .locals 0

    .line 98878
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/mY;->A06:Z

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/mY;)Z
    .locals 0

    .line 98879
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/mY;->A08:Z

    return p0
.end method


# virtual methods
.method public final A05(Z)V
    .locals 3

    .line 98880
    if-eqz p1, :cond_0

    .line 98881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mY;->A07:Lcom/facebook/ads/redexgen/X/BQ;

    .line 98882
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mY;->A08:Z

    if-nez v0, :cond_1

    .line 98883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/mY;->A08:Z

    .line 98884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mY;->A05:Lcom/facebook/ads/redexgen/X/Bf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bf;->cancel()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/mY;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_2

    .line 98885
    sget-object v2, Lcom/facebook/ads/redexgen/X/mY;->A09:[Ljava/lang/String;

    const-string v1, "eeNE7Qy6MuAlBYtV44JqSUiJf46fCooo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/mY;->interrupt()V

    .line 98886
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEo(JJF)V
    .locals 4

    .line 98887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mY;->A03:Lcom/facebook/ads/redexgen/X/BU;

    iput-wide p3, v0, Lcom/facebook/ads/redexgen/X/BU;->A01:J

    .line 98888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mY;->A03:Lcom/facebook/ads/redexgen/X/BU;

    iput p5, v0, Lcom/facebook/ads/redexgen/X/BU;->A00:F

    .line 98889
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/mY;->A00:J

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 98890
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/mY;->A00:J

    .line 98891
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/mY;->A07:Lcom/facebook/ads/redexgen/X/BQ;

    .line 98892
    .local v0, "internalHandler":Landroid/os/Handler;
    if-eqz v3, :cond_0

    .line 98893
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v2, v0

    long-to-int v1, p1

    .line 98894
    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 98895
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98896
    .end local v0    # "internalHandler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 11

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 98897
    .local v0, "this":Lcom/facebook/ads/redexgen/X/mY;
    :try_start_0
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A06:Z

    if-eqz v0, :cond_1

    .line 98898
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A05:Lcom/facebook/ads/redexgen/X/Bf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bf;->remove()V

    goto :goto_1

    .line 98899
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/mY;
    :cond_1
    const/4 v6, 0x0

    .line 98900
    .local v1, "errorCount":I
    const-wide/16 v9, -0x1

    .line 98901
    .local v2, "errorPosition":J
    :cond_2
    :goto_0
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A08:Z

    if-nez v0, :cond_6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98902
    :try_start_1
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A05:Lcom/facebook/ads/redexgen/X/Bf;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/Bf;->A5v(Lcom/facebook/ads/redexgen/X/Be;)V

    goto :goto_1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98903
    :catch_0
    move-exception v8

    .line 98904
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A08:Z

    if-nez v0, :cond_2

    .line 98905
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A03:Lcom/facebook/ads/redexgen/X/BU;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/BU;->A01:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98906
    .local v5, "bytesDownloaded":J
    cmp-long v7, v3, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/mY;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/mY;->A09:[Ljava/lang/String;

    const-string v1, "VpOvMV7lY4vr3Fu5UlYiKKcH9ACGqt7g"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "gAlRMyi1pPzVqBLwURYLCrt7UwpliGsz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v7, :cond_3

    .line 98907
    move-wide v9, v3

    .line 98908
    const/4 v6, 0x0

    .line 98909
    :cond_3
    :try_start_3
    add-int/lit8 v6, v6, 0x1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A02:I

    if-gt v6, v0, :cond_4

    .line 98910
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/mY;->A00(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 98911
    :cond_4
    throw v8
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98912
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 98913
    :catch_1
    move-exception v0

    .line 98914
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/mY;->A01:Ljava/lang/Exception;

    goto :goto_1

    .line 98915
    .end local v1    # "e":Ljava/lang/Exception;
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 98916
    :cond_6
    :goto_1
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/mY;->A07:Lcom/facebook/ads/redexgen/X/BQ;

    .line 98917
    .local v1, "internalHandler":Landroid/os/Handler;
    if-eqz v1, :cond_7

    .line 98918
    const/16 v0, 0x9

    invoke-virtual {v1, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98919
    :cond_7
    return-void
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "internalHandler":Landroid/os/Handler;
    .end local v2    # "errorPosition":J
    :catchall_0
    move-exception v0

    .end local v1
    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/mY;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/mY;->A09:[Ljava/lang/String;

    const-string v1, "35cAsSHzLcpGFjLAU34RIcGdZnNZcSm1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9oN8QLA5AyCkKiMzUX6AKpAi6mTPSF3S"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
