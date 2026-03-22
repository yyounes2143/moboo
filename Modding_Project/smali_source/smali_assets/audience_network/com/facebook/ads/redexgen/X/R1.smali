.class public final Lcom/facebook/ads/redexgen/X/R1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A02:Lcom/facebook/ads/redexgen/X/R0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1543
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "npa5fyfDyBgpHwGfwNiqfHEj4F8LEiZf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OqeETugh9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5goSJATWOcVItDjddk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "82BqGjCZsQ5KSOXOW0A0KlOfyUV9N54d"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DC8qTi6RH4AT7G9O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9IwTeKuU2aT5NbzWtfQwCWqg5E0PczVH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CnGxzoUQk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OIUpXP34AuomSZv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R1;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 0

    .line 61901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61902
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 61903
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    .line 61904
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/R1;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

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
    .locals 4

    const/16 v0, 0x31

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const-string v1, "H3o2ukg7PoWSfztBPt1oK5BMl3p36c0G"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "tZaZcqIYCt5A5bsZPeypVNujsThHJ9sw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/R1;->A03:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x61t
        0x62t
        0x56t
        0x47t
        0x4at
        0x46t
        0x4dt
        0x40t
        0x46t
        0x6dt
        0x46t
        0x57t
        0x54t
        0x4ct
        0x51t
        0x48t
        0x13t
        0x28t
        0x23t
        0x3et
        0x36t
        0x23t
        0x25t
        0x32t
        0x23t
        0x22t
        0x66t
        0x23t
        0x3et
        0x25t
        0x23t
        0x36t
        0x32t
        0x2ft
        0x29t
        0x28t
        0x68t
        0x3ct
        0x33t
        0x2t
        0x3ct
        0x3et
        0x29t
        0x34t
        0x2bt
        0x34t
        0x29t
        0x24t
    .end array-data
.end method

.method private A02(Ljava/lang/Throwable;)V
    .locals 6

    .line 61905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    .line 61906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->A09()V

    .line 61907
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->finish(I)V

    .line 61908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 61909
    .local v0, "logContext":Lcom/facebook/ads/redexgen/X/SQ;
    if-eqz v0, :cond_0

    .line 61910
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Sv;->A0C:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 61911
    const/16 v2, 0x26

    const/16 v1, 0xb

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 61912
    :goto_0
    return-void

    .line 61913
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R1;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x15

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 61914
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 61916
    return-void

    .line 61917
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/R0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61918
    :catchall_0
    move-exception v0

    .line 61919
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61920
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final finish(I)V
    .locals 1

    .line 61921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 61922
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 61923
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 61925
    return-void

    .line 61926
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/R0;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61927
    :catchall_0
    move-exception v0

    .line 61928
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61929
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 61930
    return-void
.end method

.method public final onBackPressed()V
    .locals 4

    .line 61931
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61932
    return-void

    .line 61933
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->onBackPressed()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61934
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    .line 61935
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const-string v1, "nPADpKrXuoueUGX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "T13akIzntQNSUZag"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61936
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 61937
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61939
    return-void

    .line 61940
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61941
    :catchall_0
    move-exception v0

    .line 61942
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61943
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61944
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const-string v1, "Q1wJ3SQKEGYG95X"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "AvO5pGxADzIyCHUj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onCreate(Landroid/os/Bundle;)V

    .line 61946
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61947
    :catchall_0
    move-exception v0

    .line 61948
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61949
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 61950
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 61952
    return-void

    .line 61953
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->onDestroy()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61954
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    .line 61955
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/R1;->A04:[Ljava/lang/String;

    const-string v1, "3CPJLXRae2337PFMI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61956
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 61957
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onPause()V
    .locals 1

    .line 61958
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 61960
    return-void

    .line 61961
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->onPause()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61962
    :catchall_0
    move-exception v0

    .line 61963
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61964
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 61965
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 61966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onResume()V

    .line 61967
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61968
    return-void

    .line 61969
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->onResume()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61970
    :catchall_0
    move-exception v0

    .line 61971
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61972
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 61973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61974
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61975
    return-void

    .line 61976
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61977
    :catchall_0
    move-exception v0

    .line 61978
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61979
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 61980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStart()V

    .line 61981
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61982
    return-void

    .line 61983
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->onStart()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61984
    :catchall_0
    move-exception v0

    .line 61985
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61986
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 61987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStop()V

    .line 61988
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61989
    return-void

    .line 61990
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R0;->onStop()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61991
    :catchall_0
    move-exception v0

    .line 61992
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61993
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 61994
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A00:Z

    if-eqz v0, :cond_0

    .line 61995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 61996
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A02:Lcom/facebook/ads/redexgen/X/R0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R0;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61997
    :catchall_0
    move-exception v0

    .line 61998
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/R1;->A02(Ljava/lang/Throwable;)V

    .line 61999
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R1;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
