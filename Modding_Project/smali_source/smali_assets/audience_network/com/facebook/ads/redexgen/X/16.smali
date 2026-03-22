.class public final Lcom/facebook/ads/redexgen/X/16;
.super Lcom/facebook/ads/redexgen/X/9l;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/na;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/InputStream;

.field public A04:Z

.field public final A05:Landroid/content/res/Resources;

.field public final A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 46
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QLuP8Pt4KiB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RgtlFkBshe2uzsEMObMvf6GLE9oju0kX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TTP1lITjIL7gpSd4kE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZIRCIqgztw3RRTH34yg2MmGGdHBG3Sqw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W8lxrl5W"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1BP9Supp2XIZ7aBeV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CPoLKetsO3XScG5XHhoA5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "r"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/16;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 7759
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9l;-><init>(Z)V

    .line 7760
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A05:Landroid/content/res/Resources;

    .line 7761
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A06:Ljava/lang/String;

    .line 7762
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xe5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x36t
        0x48t
        0x63t
        0x69t
        0x2dt
        0x62t
        0x6bt
        0x2dt
        0x7et
        0x79t
        0x7ft
        0x68t
        0x6ct
        0x60t
        0x2dt
        0x7ft
        0x68t
        0x6ct
        0x6et
        0x65t
        0x68t
        0x69t
        0x2dt
        0x65t
        0x6ct
        0x7bt
        0x64t
        0x63t
        0x6at
        0x2dt
        0x63t
        0x62t
        0x79t
        0x2dt
        0x7ft
        0x68t
        0x6ct
        0x69t
        0x2dt
        0x7et
        0x78t
        0x6bt
        0x6bt
        0x64t
        0x6et
        0x64t
        0x68t
        0x63t
        0x79t
        0x2dt
        0x69t
        0x6ct
        0x79t
        0x6ct
        0x23t
        0x7at
        0x4dt
        0x5bt
        0x47t
        0x5dt
        0x5at
        0x4bt
        0x4dt
        0x8t
        0x41t
        0x4ct
        0x4dt
        0x46t
        0x5ct
        0x41t
        0x4et
        0x41t
        0x4dt
        0x5at
        0x8t
        0x45t
        0x5dt
        0x5bt
        0x5ct
        0x8t
        0x4at
        0x4dt
        0x8t
        0x49t
        0x46t
        0x8t
        0x41t
        0x46t
        0x5ct
        0x4dt
        0x4ft
        0x4dt
        0x5at
        0x6t
        0x1bt
        0x2ct
        0x3at
        0x26t
        0x3ct
        0x3bt
        0x2at
        0x2ct
        0x69t
        0x20t
        0x3at
        0x69t
        0x2at
        0x26t
        0x24t
        0x39t
        0x3bt
        0x2ct
        0x3at
        0x3at
        0x2ct
        0x2dt
        0x73t
        0x69t
        0x32t
        0x5t
        0x13t
        0xft
        0x15t
        0x12t
        0x3t
        0x5t
        0x40t
        0xet
        0xft
        0x14t
        0x40t
        0x6t
        0xft
        0x15t
        0xet
        0x4t
        0x4et
        0x73t
        0x74t
        0x6ft
        0x6t
        0x4bt
        0x53t
        0x55t
        0x52t
        0x6t
        0x43t
        0x4ft
        0x52t
        0x4et
        0x43t
        0x54t
        0x6t
        0x53t
        0x55t
        0x43t
        0x6t
        0x55t
        0x45t
        0x4et
        0x43t
        0x4bt
        0x43t
        0x6t
        0x54t
        0x47t
        0x51t
        0x54t
        0x43t
        0x55t
        0x49t
        0x53t
        0x54t
        0x45t
        0x43t
        0x6t
        0x49t
        0x54t
        0x6t
        0x47t
        0x48t
        0x42t
        0x54t
        0x49t
        0x4ft
        0x42t
        0x8t
        0x54t
        0x43t
        0x55t
        0x49t
        0x53t
        0x54t
        0x45t
        0x43t
        0x72t
        0x4at
        0x5t
        0x62t
        0x6dt
        0x67t
        0x71t
        0x6ct
        0x6at
        0x67t
        0x2dt
        0x71t
        0x66t
        0x70t
        0x6ct
        0x76t
        0x71t
        0x60t
        0x66t
        0x45t
        0x56t
        0x40t
        0x5ct
        0x4ft
        0x59t
        0x5ct
        0x4bt
        0x5dt
        0x41t
        0x5bt
        0x5ct
        0x4dt
        0x4bt
    .end array-data
.end method


# virtual methods
.method public final A9H()Landroid/net/Uri;
    .locals 1

    .line 7763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final AFy(Lcom/facebook/ads/redexgen/X/56;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/na;
        }
    .end annotation

    .line 7764
    move-object v9, p0

    iget-object v8, p1, Lcom/facebook/ads/redexgen/X/56;->A06:Landroid/net/Uri;

    .line 7765
    .local v3, "uri":Landroid/net/Uri;
    iput-object v8, v9, Lcom/facebook/ads/redexgen/X/16;->A02:Landroid/net/Uri;

    .line 7766
    const/16 v2, 0xda

    const/16 v1, 0xb

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v7, 0x7d5

    const/16 v4, 0x3ec

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 7767
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const-string v1, "6WAfCQCC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2bXUndVpRAzh6SBol"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v2, 0xc7

    const/16 v1, 0x10

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7768
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 7769
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/16 v5, 0xc4

    const/4 v2, 0x3

    const/16 v0, 0x51

    invoke-static {v5, v2, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7770
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7771
    .restart local v9
    goto :goto_1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9

    .line 7772
    :cond_1
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7773
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7774
    .local v0, "path":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7775
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 7776
    :cond_2
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 7777
    .local v5, "host":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7778
    .local v8, "resourceName":Ljava/lang/String;
    iget-object v4, v9, Lcom/facebook/ads/redexgen/X/16;->A05:Landroid/content/res/Resources;

    iget-object v3, v9, Lcom/facebook/ads/redexgen/X/16;->A06:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    .line 7779
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const-string v1, "8DRS4lLYfMrToLqDwLXqvfchHPsueWE2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "vCWitTtlDB9EwPvV6O7ut3igyg5fSS64"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v2, 0xd7

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 7780
    .local v9, "resourceId":I
    if-eqz v1, :cond_11

    .line 7781
    :goto_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0G(Lcom/facebook/ads/redexgen/X/56;)V

    goto :goto_2

    .line 7782
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const-string v1, "A"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "wipKq4bcm9KT4pACcA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v2, 0xa

    const/4 v1, 0x1

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 7783
    .local v9, "resourceId":I
    if-eqz v1, :cond_11

    goto :goto_1

    .line 7784
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7785
    :goto_2
    :try_start_1
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/16;->A05:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 7786
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iput-object v10, v9, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 7787
    if-eqz v10, :cond_10

    .line 7788
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    .line 7789
    .local v10, "assetFileDescriptorLength":J
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7790
    .local v8, "inputStream":Ljava/io/FileInputStream;
    iput-object v7, v9, Lcom/facebook/ads/redexgen/X/16;->A03:Ljava/io/InputStream;

    .line 7791
    const/16 v9, 0x7d8

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    :try_start_2
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    cmp-long v8, v0, v2

    if-gtz v8, :cond_5

    goto :goto_3

    .line 7792
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v6, v6, v9}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local p11
    throw v0
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/na; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7793
    :cond_6
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    .line 7794
    .local p1, "assetFileDescriptorOffset":J
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    add-long/2addr v0, v8

    .line 7795
    invoke-virtual {v7, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v11

    sub-long/2addr v11, v8
    :try_end_3
    .catch Lcom/facebook/ads/redexgen/X/na; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 7796
    .local v5, "skipped":J
    :try_start_4
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A04:J

    cmp-long v8, v11, v0

    if-nez v8, :cond_f

    .line 7797
    const-wide/16 v9, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    .line 7798
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 7799
    .local p4, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v0, v1, v9

    if-nez v0, :cond_7

    .line 7800
    move-object v7, p0
    :try_end_4
    .catch Lcom/facebook/ads/redexgen/X/na; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    goto :goto_4
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/na; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 7801
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p11
    :catch_0
    move-exception v2

    goto/16 :goto_7

    .line 7802
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 7803
    :cond_7
    move-object v7, p0

    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local p5, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :try_start_6
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    .line 7804
    iget-wide v1, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    cmp-long v0, v1, v9

    if-ltz v0, :cond_8

    goto :goto_4

    .line 7805
    :cond_8
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v6, v6, v1}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local p5
    .end local p11
    throw v0

    .line 7806
    .end local p4
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p11
    :cond_9
    move-object v7, p0

    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p5
    sub-long/2addr v2, v11

    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    .line 7807
    iget-wide v1, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    cmp-long v0, v1, v9

    if-ltz v0, :cond_e
    :try_end_6
    .catch Lcom/facebook/ads/redexgen/X/na; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 7808
    .end local v5    # "skipped":J
    .end local p1    # "assetFileDescriptorOffset":J
    :goto_4
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    const-wide/16 v5, -0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const-string v1, "f"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_a

    .line 7809
    iget-wide v1, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    cmp-long v0, v1, v5

    if-nez v0, :cond_c

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    :goto_5
    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    .line 7810
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    .line 7811
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9l;->A0H(Lcom/facebook/ads/redexgen/X/56;)V

    .line 7812
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_b

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    :goto_6
    return-wide v0

    :cond_b
    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    goto :goto_6

    .line 7813
    :cond_c
    iget-wide v2, v7, Lcom/facebook/ads/redexgen/X/16;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/56;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7814
    :cond_e
    :try_start_7
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4z;-><init>(I)V

    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    .end local v10    # "assetFileDescriptorLength":J
    .end local p5
    .end local p11
    throw v0

    .line 7815
    :cond_f
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v6, v6, v1}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3
    .end local v8
    .end local v9
    .end local v10
    .end local p5
    .end local p11
    throw v0
    :try_end_7
    .catch Lcom/facebook/ads/redexgen/X/na; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 7816
    .end local p5
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v2

    goto :goto_7

    .line 7817
    :catch_3
    move-exception v0

    goto :goto_8

    .line 7818
    :catch_4
    move-exception v2

    goto :goto_7

    .end local v5
    .end local p1
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "resourceId":I
    .restart local v10    # "assetFileDescriptorLength":J
    .restart local p5
    .restart local p11
    :catch_5
    move-exception v2

    .line 7819
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local v0, "e":Ljava/io/IOException;
    .restart local p5
    :goto_7
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 7820
    .end local v0    # "e":Ljava/io/IOException;
    .end local p5
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    .line 7821
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local v0, "e":Lcom/facebook/ads/redexgen/X/na;
    .restart local p5
    :goto_8
    throw v0

    .line 7822
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/na;
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v10    # "assetFileDescriptorLength":J
    .end local p5
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p5
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    const/16 v1, 0x18

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v2, v6, v1}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 7823
    .end local p5
    :catch_8
    move-exception v2

    const/16 v1, 0x7d5

    .line 7824
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 7825
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v5    # "skipped":J
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    :cond_11
    const/16 v2, 0x77

    const/16 v1, 0x13

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 7826
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "skipped":J
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "resourceId":I
    :cond_12
    const/16 v2, 0x8a

    const/16 v1, 0x3a

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v1, v6, v4}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 7827
    .end local v0
    .end local v9
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_9
    const/16 v2, 0x38

    const/16 v1, 0x27

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v1, v6, v4}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/na;
        }
    .end annotation

    .line 7828
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Landroid/net/Uri;

    .line 7829
    const/16 v4, 0x7d0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 7830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7831
    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Ljava/io/InputStream;

    .line 7832
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 7833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7834
    :cond_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 7835
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    if-eqz v0, :cond_2

    .line 7836
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    .line 7837
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 7838
    :cond_2
    return-void

    .line 7839
    :catch_0
    move-exception v1

    .line 7840
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7841
    :catchall_0
    move-exception v4

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    .line 7842
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A08:[Ljava/lang/String;

    const-string v1, "iC26zNxzLLnB2GH7qyOIGlAQhGgRPuU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    if-eqz v0, :cond_3

    .line 7843
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    .line 7844
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 7845
    :cond_3
    throw v4

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7846
    :catch_1
    move-exception v1

    .line 7847
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7848
    :catchall_1
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Ljava/io/InputStream;

    .line 7849
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_5

    .line 7850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 7851
    :cond_5
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 7852
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    if-eqz v0, :cond_6

    .line 7853
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    .line 7854
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 7855
    :cond_6
    throw v1

    .line 7856
    :catch_2
    move-exception v1

    .line 7857
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 7858
    :catchall_2
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 7859
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    if-eqz v0, :cond_7

    .line 7860
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/16;->A04:Z

    .line 7861
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9l;->A0E()V

    .line 7862
    :cond_7
    throw v1
.end method

.method public final read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/na;
        }
    .end annotation

    .line 7863
    if-nez p3, :cond_0

    .line 7864
    const/4 v0, 0x0

    return v0

    .line 7865
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 7866
    return v5

    .line 7867
    :cond_1
    const/16 v4, 0x7d0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:J

    const-wide/16 v7, -0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 7868
    .local v1, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A03:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 7869
    .local v1, "bytesRead":I
    if-ne v6, v5, :cond_4

    goto :goto_1

    .line 7870
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7871
    :goto_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:J

    cmp-long v0, v1, v7

    if-nez v0, :cond_3

    .line 7872
    return v5

    .line 7873
    :cond_3
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x36

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 7874
    :cond_4
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:J

    cmp-long v0, v1, v7

    if-eqz v0, :cond_5

    .line 7875
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/16;->A00:J

    int-to-long v0, v6

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/16;->A00:J

    .line 7876
    :cond_5
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/9l;->A0F(I)V

    .line 7877
    return v6

    .line 7878
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 7879
    .local v1, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/na;

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/na;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method
