.class public final Lcom/facebook/ads/redexgen/X/15;
.super Lcom/facebook/ads/redexgen/X/9l;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/nZ;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/net/DatagramSocket;

.field public A03:Ljava/net/InetAddress;

.field public A04:Ljava/net/MulticastSocket;

.field public A05:Z

.field public final A06:I

.field public final A07:Ljava/net/DatagramPacket;

.field public final A08:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7702
    const/16 v0, 0x7d0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/15;-><init>(I)V

    .line 7703
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7704
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/15;-><init>(II)V

    .line 7705
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 7706
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Z)V

    .line 7707
    iput p2, p0, Lcom/facebook/ads/redexgen/X/15;->A06:I

    .line 7708
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A08:[B

    .line 7709
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/15;->A08:[B

    const/4 v1, 0x0

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, v2, v1, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A07:Ljava/net/DatagramPacket;

    .line 7710
    return-void
.end method


# virtual methods
.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 7711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/nZ;
        }
    .end annotation

    .line 7712
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A01:Landroid/net/Uri;

    .line 7713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7714
    .local v0, "host":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 7715
    .local v1, "port":I
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0G(Lcom/facebook/ads/redexgen/X/56;)V

    .line 7716
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A03:Ljava/net/InetAddress;

    .line 7717
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/15;->A03:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 7718
    .local v2, "socketAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/15;->A03:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7719
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/15;->A04:Ljava/net/MulticastSocket;

    .line 7720
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/15;->A04:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A03:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 7721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A04:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A02:Ljava/net/DatagramSocket;

    .line 7722
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/15;->A02:Ljava/net/DatagramSocket;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/15;->A06:I

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    goto :goto_1

    .line 7723
    :cond_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/15;->A02:Ljava/net/DatagramSocket;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7724
    .end local v2    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/15;->A05:Z

    .line 7725
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0H(Lcom/facebook/ads/redexgen/X/56;)V

    .line 7726
    const-wide/16 v0, -0x1

    return-wide v0

    .line 7727
    :catch_0
    move-exception v2

    .line 7728
    .local v2, "e":Ljava/io/IOException;
    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/redexgen/X/nZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/nZ;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 7729
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 7730
    .local v2, "e":Ljava/lang/SecurityException;
    const/16 v1, 0x7d6

    new-instance v0, Lcom/facebook/ads/redexgen/X/nZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/nZ;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .line 7731
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/15;->A01:Landroid/net/Uri;

    .line 7732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A04:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 7733
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/15;->A04:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A03:Ljava/net/InetAddress;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7734
    :catch_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/15;->A04:Ljava/net/MulticastSocket;

    .line 7735
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A02:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 7736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A02:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 7737
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/15;->A02:Ljava/net/DatagramSocket;

    .line 7738
    :cond_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/15;->A03:Ljava/net/InetAddress;

    .line 7739
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    .line 7740
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/15;->A05:Z

    if-eqz v0, :cond_2

    .line 7741
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/15;->A05:Z

    .line 7742
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 7743
    :cond_2
    return-void
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/nZ;
        }
    .end annotation

    .line 7744
    if-nez p3, :cond_0

    .line 7745
    const/4 v0, 0x0

    return v0

    .line 7746
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    if-nez v0, :cond_1

    .line 7747
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A02:Ljava/net/DatagramSocket;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A07:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7748
    :catch_0
    move-exception v2

    .line 7749
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x7d1

    new-instance v0, Lcom/facebook/ads/redexgen/X/nZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/nZ;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 7750
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 7751
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const/16 v1, 0x7d2

    new-instance v0, Lcom/facebook/ads/redexgen/X/nZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/nZ;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 7752
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A07:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    .line 7753
    iget v0, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9l;->A0F(I)V

    .line 7754
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A07:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    sub-int/2addr v2, v0

    .line 7755
    .local v0, "packetOffset":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7756
    .local v1, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/15;->A08:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7757
    iget v0, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/15;->A00:I

    .line 7758
    return v1
.end method
