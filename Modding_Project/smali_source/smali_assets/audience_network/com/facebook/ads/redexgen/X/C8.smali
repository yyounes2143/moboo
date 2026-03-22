.class public final Lcom/facebook/ads/redexgen/X/C8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ed;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Su;

.field public A01:Ljava/util/concurrent/Executor;

.field public A02:Z

.field public A03:Lcom/facebook/ads/redexgen/X/ei;

.field public final A04:Lcom/facebook/ads/redexgen/X/en;

.field public final A05:Lcom/facebook/ads/redexgen/X/es;

.field public final A06:Lcom/facebook/ads/redexgen/X/et;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 632
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QhNFYJC9gEUd0JRpeTZcIYaCPwaofmcY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H7lFuH2c6lRKE1KzrEc8woYXA3m4qwgD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VasthUCsKtAfJQ49O69n9k2VDB8sk6Ry"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CLNAbcda3kskZ9l1P61KK9o7E81JDy0P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FTSbac7VR6oRDuoXxASKkUBG2ay4Jl1O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oDWQMCtwqliv6oQHoqRk4BTd2HTxQUcC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "maa7C87UpzAlS2qduOc8uqrscl2NkhxH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/C8;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/ed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/C8;->A09:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ei;Lcom/facebook/ads/redexgen/X/Su;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 31763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31764
    new-instance v0, Lcom/facebook/ads/redexgen/X/CH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A04:Lcom/facebook/ads/redexgen/X/en;

    .line 31765
    invoke-static {}, Lcom/facebook/ads/redexgen/X/C8;->A0B()V

    .line 31766
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    .line 31767
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ei;->A04()Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/C7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/C7;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    .line 31768
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    new-instance v0, Lcom/facebook/ads/redexgen/X/21;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/21;-><init>(Lcom/facebook/ads/redexgen/X/C8;Lcom/facebook/ads/redexgen/X/et;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    .line 31769
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:Ljava/util/concurrent/Executor;

    .line 31770
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:Lcom/facebook/ads/redexgen/X/Su;

    .line 31771
    return-void
.end method

.method private final A00(Ljava/net/HttpURLConnection;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31772
    const/4 v1, 0x0

    .line 31773
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/es;->AG3(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    .line 31774
    if-eqz v1, :cond_0

    .line 31775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/es;->AKN(Ljava/io/OutputStream;[B)V

    .line 31776
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 31777
    if-eqz v1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31778
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31779
    :catch_0
    :cond_1
    return v0

    .line 31780
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 31781
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 31782
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/ep;)Lcom/facebook/ads/redexgen/X/ec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/eq;
        }
    .end annotation

    .line 31783
    const/16 v2, 0xdc

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    .line 31784
    .local v1, "uc":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 31785
    .local v2, "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    const/4 v8, 0x0

    :try_start_0
    iput-boolean v8, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:Z

    .line 31786
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WS;->A04()Z

    move-result v0

    .line 31787
    .local v4, "isE2E":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/C8;->A09()Ljava/net/Proxy;

    move-result-object v1

    .line 31788
    .local v6, "proxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/C8;->A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 31789
    invoke-direct {p0, v4, p1}, Lcom/facebook/ads/redexgen/X/C8;->A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/ep;)V

    .line 31790
    invoke-direct {p0, v4, p1}, Lcom/facebook/ads/redexgen/X/C8;->A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/ep;)V

    .line 31791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A06()[B

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/et;->ABN(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 31793
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 31794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:Z

    .line 31795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A01()Ljava/util/Set;

    move-result-object v5

    .line 31796
    .local v8, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A02()Ljava/util/Set;

    move-result-object v2

    .line 31797
    .local p0, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 31798
    :cond_1
    move-object v1, v6

    goto :goto_0

    .line 31799
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 31800
    .local p1, "pinCerts":Z
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v8, 0x1

    .line 31801
    .local v3, "pinKeys":Z
    :cond_3
    instance-of v0, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    if-eqz v8, :cond_5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31802
    :cond_4
    :try_start_1
    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/eu;->A03(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_3
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31803
    :catch_0
    move-exception v5

    .line 31804
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:Lcom/facebook/ads/redexgen/X/Su;

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A1y:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->ABR(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    goto :goto_3

    .line 31805
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 31806
    .local v7, "e":Ljava/security/cert/CertificateException;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:Lcom/facebook/ads/redexgen/X/Su;

    sget v1, Lcom/facebook/ads/redexgen/X/Sv;->A1z:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->ABR(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 31807
    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A06()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 31808
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A06()[B

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/C8;->A00(Ljava/net/HttpURLConnection;[B)I

    .line 31809
    :cond_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31810
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/C8;->A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/C9;

    move-result-object v1

    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    .local v0, "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    goto :goto_4

    .line 31811
    .end local v0    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    :cond_7
    new-instance v1, Lcom/facebook/ads/redexgen/X/C9;

    invoke-direct {v1, v4, v6}, Lcom/facebook/ads/redexgen/X/C9;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31812
    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    .end local v3    # "pinKeys":Z
    .end local v4    # "isE2E":Z
    .end local v6    # "proxy":Ljava/net/Proxy;
    .end local v8    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "pinCerts":Z
    .restart local v0    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/et;->ABO(Lcom/facebook/ads/redexgen/X/ec;)V

    .line 31814
    :cond_8
    if-eqz v4, :cond_9

    .line 31815
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31816
    :cond_9
    return-object v1

    .line 31817
    :catch_2
    move-exception v6

    .line 31818
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/C8;->A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/C9;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_d

    .line 31819
    sget-object v2, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const-string v1, "6Q02gTcavt1J3D6llCgnQfsLExV7BLlB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_c

    :try_start_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/C9;->A94()I

    move-result v0

    if-lez v0, :cond_c
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 31820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/et;->ABO(Lcom/facebook/ads/redexgen/X/ec;)V

    .line 31822
    :cond_a
    if-eqz v4, :cond_b

    .line 31823
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31824
    :cond_b
    return-object v3

    .line 31825
    :cond_c
    :try_start_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/eq;

    invoke-direct {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/eq;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/ec;)V

    goto :goto_5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 31826
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31827
    .local v3, "ee":Ljava/lang/Exception;
    :catch_3
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x75

    const/16 v1, 0xd

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31828
    .end local v3    # "ee":Ljava/lang/Exception;
    if-eqz v3, :cond_13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/ec;->A94()I

    move-result v0

    if-lez v0, :cond_13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 31829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/et;->ABO(Lcom/facebook/ads/redexgen/X/ec;)V

    .line 31831
    :cond_e
    if-eqz v4, :cond_f

    .line 31832
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31833
    :cond_f
    return-object v3

    .line 31834
    .restart local v1    # "uc":Ljava/net/HttpURLConnection;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    .restart local p6
    :catchall_0
    if-eqz v3, :cond_12

    :try_start_8
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/ec;->A94()I

    move-result v0

    if-lez v0, :cond_12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 31835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 31836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/et;->ABO(Lcom/facebook/ads/redexgen/X/ec;)V

    .line 31837
    :cond_10
    if-eqz v4, :cond_11

    .line 31838
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31839
    :cond_11
    return-object v3

    .line 31840
    :cond_12
    :try_start_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/eq;

    invoke-direct {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/eq;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/ec;)V

    goto :goto_5

    :cond_13
    new-instance v0, Lcom/facebook/ads/redexgen/X/eq;

    invoke-direct {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/eq;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/ec;)V

    .end local v1    # "uc":Ljava/net/HttpURLConnection;
    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    .end local p6
    :goto_5
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 31841
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    :catchall_1
    move-exception v1

    .end local v0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/et;->ABO(Lcom/facebook/ads/redexgen/X/ec;)V

    .line 31843
    :cond_14
    if-eqz v4, :cond_15

    .line 31844
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31845
    :cond_15
    throw v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/ep;)Lcom/facebook/ads/redexgen/X/ec;
    .locals 4

    .line 31846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31847
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C8;->A0C(Lcom/facebook/ads/redexgen/X/ep;)V

    .line 31848
    :cond_0
    const/4 v3, 0x0

    .line 31849
    .local v0, "httpResponse":Lcom/facebook/ads/redexgen/X/ec;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C8;->A01(Lcom/facebook/ads/redexgen/X/ep;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v3

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/eq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31850
    .end local v1
    :catch_0
    move-exception v1

    .line 31851
    .local v1, "hre":Lcom/facebook/ads/redexgen/X/eq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/es;->ADE(Lcom/facebook/ads/redexgen/X/eq;)Z

    .end local v1    # "hre":Lcom/facebook/ads/redexgen/X/eq;
    goto :goto_0

    .line 31852
    :catch_1
    move-exception v2

    .line 31853
    .local v1, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    new-instance v0, Lcom/facebook/ads/redexgen/X/eq;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/eq;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/ec;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/es;->ADE(Lcom/facebook/ads/redexgen/X/eq;)Z

    .line 31854
    :goto_0
    return-object v3
.end method

.method private final A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/er;Lcom/facebook/ads/redexgen/X/el;)Lcom/facebook/ads/redexgen/X/ec;
    .locals 1

    .line 31855
    new-instance v0, Lcom/facebook/ads/redexgen/X/CB;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/CB;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/er;Lcom/facebook/ads/redexgen/X/el;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C8;->A02(Lcom/facebook/ads/redexgen/X/ep;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/el;)Lcom/facebook/ads/redexgen/X/ec;
    .locals 6

    .line 31856
    new-instance v0, Lcom/facebook/ads/redexgen/X/CA;

    const/4 v2, 0x0

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/CA;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/er;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/el;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/C8;->A02(Lcom/facebook/ads/redexgen/X/ep;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/C9;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31857
    const/4 v2, 0x0

    .line 31858
    .local v0, "err":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 31859
    .local v1, "responseBody":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 31860
    if-eqz v2, :cond_0

    .line 31861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/es;->AGj(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 31862
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/C9;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/C9;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 31863
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31864
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31865
    :catch_0
    :cond_1
    return-object v0

    .line 31866
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 31867
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 31868
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/C9;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31869
    const/4 v3, 0x0

    .line 31870
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 31871
    .local v1, "responseBody":[B
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/es;->AG2(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 31872
    if-eqz v3, :cond_0

    .line 31873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/es;->AGj(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 31874
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/C9;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/C9;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 31875
    if-eqz v3, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31876
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31877
    :catch_0
    :cond_1
    return-object v0

    .line 31878
    :catchall_0
    move-exception v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const-string v1, "UXNjV4lzV2ywD4tdDbD0LjxSkhTqZWDx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ckNMQEffDKJwLTwRJSWHE7UL6GsW6bMO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 31879
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 31880
    :catch_1
    :cond_3
    throw v4
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/C8;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31881
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31882
    const v0, 0xf00d

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 31883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/es;->AG1(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 31884
    :catch_0
    move-exception v4

    .line 31885
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x12

    const/16 v1, 0x13

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A09()Ljava/net/Proxy;
    .locals 5

    .line 31886
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 31887
    .local v0, "proxy":Ljava/net/Proxy;
    const/16 v3, 0xc0

    const/16 v2, 0xe

    const/4 v1, 0x1

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31888
    .local v1, "proxyAddress":Ljava/lang/String;
    const/16 v3, 0xce

    const/16 v2, 0xe

    const/16 v1, 0x62

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31889
    .local v2, "portStr":Ljava/lang/String;
    const/4 v3, -0x1

    .line 31890
    .local v3, "port":I
    if-eqz v1, :cond_0

    .line 31891
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31892
    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_0
    return-object v0

    .line 31893
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez v3, :cond_1

    const v1, 0xffff

    if-gt v3, v1, :cond_1

    .line 31894
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 31895
    :cond_1
    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0xe3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/C8;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x39t
        0x66t
        0x6bt
        0xet
        0x66t
        0x64t
        0x4dt
        0x40t
        0x9t
        0x4dt
        0x4ft
        0x1et
        0x5dt
        0x4bt
        0x4ct
        0x52t
        0x1et
        0x2at
        0x63t
        0x79t
        0x2at
        0x64t
        0x65t
        0x7et
        0x2at
        0x6bt
        0x2at
        0x7ct
        0x6bt
        0x66t
        0x63t
        0x6et
        0x2at
        0x5ft
        0x58t
        0x46t
        0x50t
        0x1ft
        0x16t
        0x50t
        0x4bt
        0x78t
        0x74t
        0x17t
        0x0t
        0x74t
        0x69t
        0x74t
        0x37t
        0x3bt
        0x49t
        0x4ft
        0x3bt
        0x26t
        0x3bt
        0x26t
        0x2at
        0x7et
        0x78t
        0x73t
        0x63t
        0x64t
        0x6dt
        0x2at
        0x5et
        0x4t
        0x22t
        0x2bt
        0x26t
        0x37t
        0x34t
        0x22t
        0x23t
        0x47t
        0x33t
        0x2et
        0x2at
        0x22t
        0x47t
        0x5at
        0x47t
        0x47t
        0x65t
        0x74t
        0x74t
        0x69t
        0x6et
        0x67t
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x68t
        0x74t
        0x74t
        0x70t
        0x20t
        0x72t
        0x65t
        0x73t
        0x70t
        0x6ft
        0x6et
        0x73t
        0x65t
        0x20t
        0x74t
        0x69t
        0x6dt
        0x65t
        0x64t
        0x20t
        0x6ft
        0x75t
        0x74t
        0x3dt
        0x16t
        0x7t
        0x4t
        0x1ct
        0x1t
        0x18t
        0x53t
        0x16t
        0x1t
        0x1t
        0x1ct
        0x1t
        0x17t
        0x16t
        0x4t
        0x6ft
        0x7at
        0x16t
        0x7t
        0x7t
        0x1bt
        0x1et
        0x14t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x58t
        0xft
        0x5at
        0x0t
        0x0t
        0x0t
        0x5at
        0x11t
        0x18t
        0x5t
        0x1at
        0x5at
        0x2t
        0x5t
        0x1bt
        0x12t
        0x19t
        0x14t
        0x18t
        0x13t
        0x12t
        0x13t
        0x4ct
        0x14t
        0x1ft
        0x16t
        0x5t
        0x4t
        0x12t
        0x3t
        0x4at
        0x22t
        0x23t
        0x31t
        0x5at
        0x4ft
        0x59t
        0x4ft
        0x48t
        0x56t
        0x1at
        0x17t
        0x51t
        0x1at
        0x17t
        0x53t
        0x78t
        0x64t
        0x64t
        0x60t
        0x3et
        0x60t
        0x62t
        0x7ft
        0x68t
        0x69t
        0x58t
        0x7ft
        0x63t
        0x64t
        0x1bt
        0x7t
        0x7t
        0x3t
        0x5dt
        0x3t
        0x1t
        0x1ct
        0xbt
        0xat
        0x23t
        0x1ct
        0x1t
        0x7t
        0x29t
        0x22t
        0x33t
        0x30t
        0x28t
        0x35t
        0x2ct
    .end array-data
.end method

.method public static declared-synchronized A0B()V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/C8;

    monitor-enter v1

    .line 31896
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31897
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31898
    :cond_0
    monitor-exit v1

    return-void

    .line 31899
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/ep;)V
    .locals 7

    .line 31900
    const/16 v2, 0xb6

    const/16 v1, 0xa

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31901
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A03()Lcom/facebook/ads/redexgen/X/eo;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/eo;->A06:Lcom/facebook/ads/redexgen/X/eo;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eo;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v2, 0x29

    const/4 v1, 0x1

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A06()[B

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const-string v1, "MgpsgMtpOSh21D9UNcI3ZUtvoefc4JIC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_0

    .line 31902
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31903
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A06()[B

    move-result-object v5

    const/16 v2, 0x82

    const/4 v1, 0x5

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31904
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31905
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/el;->A06()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 31906
    .local v3, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31907
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31908
    const/16 v2, 0x42

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31909
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31910
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31911
    .end local v3    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 31912
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31913
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ep;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31914
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31915
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31916
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v1, v0, 0xfa0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/C8;->A0E(Ljava/lang/String;II)V

    .line 31917
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/ep;Lcom/facebook/ads/redexgen/X/ee;)V
    .locals 2

    .line 31918
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A04:Lcom/facebook/ads/redexgen/X/en;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/en;->A6q(Lcom/facebook/ads/redexgen/X/C8;Lcom/facebook/ads/redexgen/X/ee;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/CC;

    move-result-object v0

    .line 31919
    .local v0, "executor":Lcom/facebook/ads/redexgen/X/em;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/CC;->A04(Lcom/facebook/ads/redexgen/X/ep;)V

    .line 31920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31921
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/C8;->A0C(Lcom/facebook/ads/redexgen/X/ep;)V

    .line 31922
    :cond_0
    return-void
.end method

.method private A0E(Ljava/lang/String;II)V
    .locals 4

    .line 31923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/C8;->A09:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31924
    .local v0, "tagWithCount":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    .line 31925
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31926
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/C8;->A0E(Ljava/lang/String;II)V

    .line 31927
    :cond_0
    return-void
.end method

.method private A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/ee;Lcom/facebook/ads/redexgen/X/el;)V
    .locals 6

    .line 31928
    new-instance v0, Lcom/facebook/ads/redexgen/X/CA;

    const/4 v2, 0x0

    move-object v5, p5

    move-object v4, p3

    move-object v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/CA;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/er;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/el;)V

    .line 31929
    .local v0, "req":Lcom/facebook/ads/redexgen/X/CA;
    invoke-direct {p0, v0, p4}, Lcom/facebook/ads/redexgen/X/C8;->A0D(Lcom/facebook/ads/redexgen/X/ep;Lcom/facebook/ads/redexgen/X/ee;)V

    .line 31930
    return-void
.end method

.method private A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/ep;)V
    .locals 5

    .line 31931
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/el;->A06()Ljava/util/Map;

    move-result-object v4

    .line 31932
    .local v0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/el;->A05()Lcom/facebook/ads/redexgen/X/eb;

    move-result-object v3

    .line 31933
    .local v1, "commonRequestHeadersFactory":Lcom/facebook/ads/redexgen/X/eb;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31934
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31935
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31936
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 31937
    :cond_0
    if-eqz v3, :cond_1

    .line 31938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    .line 31939
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A03()Z

    move-result v0

    .line 31940
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/eb;->A6Y(Z)Ljava/util/Map;

    move-result-object v3

    .line 31941
    .local v2, "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31942
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31943
    .local p0, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31944
    .end local v4    # "name":Ljava/lang/String;
    .end local p0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 31945
    .end local v2    # "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private final A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/ep;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31946
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v1

    .line 31947
    .local v0, "configuration":Lcom/facebook/ads/redexgen/X/el;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/el;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 31948
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/el;->A02()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 31949
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    .line 31950
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ep;->A03()Lcom/facebook/ads/redexgen/X/eo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/ep;->A04()Ljava/lang/String;

    move-result-object v0

    .line 31951
    invoke-interface {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/es;->AGM(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/eo;Ljava/lang/String;)V

    .line 31952
    return-void
.end method

.method private final A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/ep;)Z
    .locals 8

    .line 31953
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v7

    .line 31954
    .local v0, "requestConfiguration":Lcom/facebook/ads/redexgen/X/el;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    const-wide/16 v0, 0xa

    add-long/2addr v3, v0

    .line 31955
    .local v1, "elapsedTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x43

    const/16 v1, 0xf

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x2a

    const/4 v1, 0x7

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31957
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/el;->A00()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v2, 0x31

    const/4 v1, 0x7

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31958
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/el;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31959
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 31960
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/el;->A02()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const-string v1, "tgQXMymp9cIZW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ltz v5, :cond_1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31961
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/el;->A00()I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_4

    :goto_1
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final A0J(Lcom/facebook/ads/redexgen/X/ep;)Lcom/facebook/ads/redexgen/X/ec;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/eq;
        }
    .end annotation

    .line 31962
    move-object/from16 v8, p0

    move-object v8, v8

    const/4 v7, 0x0

    .line 31963
    .local v0, "numTries":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31964
    .local v3, "startTime":J
    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/el;->A01()I

    move-result v6

    .line 31965
    .local v5, "maxRetries":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/el;->A03()I

    move-result v3

    int-to-long v9, v3

    .line 31966
    .local v6, "throttleTimeMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ep;->A02()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/el;->A04()I

    move-result v3

    int-to-long v3, v3

    add-long v16, v16, v3

    .line 31967
    .end local v0    # "numTries":I
    .local v3, "numTries":I
    .local v8, "endTimeMillis":J
    .local v21, "startTime":J
    :goto_0
    const-wide/16 v3, 0x0

    if-ge v7, v6, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v5, v16, v11

    if-lez v5, :cond_c

    .line 31968
    :try_start_0
    iget-object v5, v8, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/et;

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/et;->AAQ()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31969
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0x25

    const/4 v11, 0x4

    const/16 v5, 0x61

    invoke-static {v12, v11, v5}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0x38

    const/16 v11, 0x9

    const/16 v5, 0x1b

    invoke-static {v12, v11, v5}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 31970
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ep;->A05()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31971
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31972
    invoke-direct {v8, v2}, Lcom/facebook/ads/redexgen/X/C8;->A01(Lcom/facebook/ads/redexgen/X/ep;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v15

    .line 31973
    .local v0, "res":Lcom/facebook/ads/redexgen/X/ec;
    if-eqz v15, :cond_2

    .line 31974
    iget-object v5, v8, Lcom/facebook/ads/redexgen/X/C8;->A00:Lcom/facebook/ads/redexgen/X/Su;

    .line 31975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v0

    .line 31976
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/ec;->A6u()[B

    move-result-object v11

    array-length v11, v11

    int-to-long v13, v11

    .line 31977
    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    if-nez v11, :cond_1

    move-wide v11, v3

    goto :goto_1

    :cond_1
    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    array-length v11, v11

    int-to-long v11, v11

    .line 31978
    :goto_1
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/ec;->A94()I

    move-result v27

    .line 31979
    const/16 v28, 0x0

    move-wide/from16 v23, v13

    move-wide/from16 v25, v11

    move-object/from16 v18, v5

    move-wide/from16 v19, v0

    invoke-interface/range {v18 .. v28}, Lcom/facebook/ads/redexgen/X/Su;->ABI(JJJJILjava/lang/Exception;)V

    goto :goto_3
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/eq; {:try_start_0 .. :try_end_0} :catch_0

    .line 31980
    .end local v0    # "res":Lcom/facebook/ads/redexgen/X/ec;
    :catch_0
    move-exception v5

    .line 31981
    .end local v21    # "startTime":J
    .local v12, "startTime":J
    .local v4, "e":Lcom/facebook/ads/redexgen/X/eq;
    invoke-direct {v8, v5, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/C8;->A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/ep;)Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v14, v6, -0x1

    sget-object v12, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v12, v12, v11

    const/4 v11, 0x0

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v11, 0x6c

    if-eq v12, v11, :cond_4

    sget-object v13, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const-string v12, "iDEOxz3pTPjJqVLmMx3mPs9K2XOoyKBI"

    const/4 v11, 0x1

    aput-object v12, v13, v11

    if-ge v7, v14, :cond_3

    .line 31982
    .end local v12    # "startTime":J
    .restart local v21    # "startTime":J
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 31983
    :cond_3
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/es;

    invoke-interface {v11, v5}, Lcom/facebook/ads/redexgen/X/es;->ADE(Lcom/facebook/ads/redexgen/X/eq;)Z

    move-result v11

    .line 31984
    .local v14, "isRecoverable":Z
    if-eqz v11, :cond_6

    add-int/lit8 v11, v6, -0x1

    if-ge v7, v11, :cond_6

    .line 31985
    cmp-long v11, v9, v3

    if-lez v11, :cond_2

    .line 31986
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    .line 31987
    :goto_3
    return-object v15
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31988
    :catch_1
    move-exception v17

    .line 31989
    .local p15, "ie":Ljava/lang/InterruptedException;
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/C8;->A00:Lcom/facebook/ads/redexgen/X/Su;

    .line 31990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    .line 31991
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    if-nez v6, :cond_5

    .line 31992
    :goto_4
    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    move-wide v14, v3

    move-wide v8, v0

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/Su;->ABI(JJJJILjava/lang/Exception;)V

    .line 31993
    throw v5

    .line 31994
    :cond_5
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    array-length v2, v2

    int-to-long v3, v2

    goto :goto_4

    .line 31995
    .end local v21    # "startTime":J
    .restart local v4    # "e":Lcom/facebook/ads/redexgen/X/eq;
    .restart local v12    # "startTime":J
    .restart local v14    # "isRecoverable":Z
    :cond_6
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/eq;->A00()Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v9

    .line 31996
    .local v0, "response":Lcom/facebook/ads/redexgen/X/ec;
    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/C8;->A00:Lcom/facebook/ads/redexgen/X/Su;

    .line 31997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v4, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x6c

    if-eq v4, v3, :cond_b

    .line 31998
    sget-object v6, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const-string v4, "ETXEAYq6mx6OG4ZVoxEdED8XICrn9DEf"

    const/4 v3, 0x4

    aput-object v4, v6, v3

    if-eqz v9, :cond_7

    :goto_5
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/ec;->A6u()[B

    move-result-object v3

    if-nez v3, :cond_a

    .line 31999
    :cond_7
    const-wide/16 v3, 0x0

    .line 32000
    :goto_6
    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    if-nez v6, :cond_9

    const-wide/16 v6, 0x0

    .line 32001
    :goto_7
    if-nez v9, :cond_8

    const/16 v17, 0x0

    .line 32002
    :goto_8
    move-object v8, v8

    move-wide v9, v0

    move-wide v13, v3

    move-wide v15, v6

    move-object/from16 v18, v5

    invoke-interface/range {v8 .. v18}, Lcom/facebook/ads/redexgen/X/Su;->ABI(JJJJILjava/lang/Exception;)V

    .line 32003
    throw v5

    .line 32004
    :cond_8
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/ec;->A94()I

    move-result v17

    goto :goto_8

    .line 32005
    :cond_9
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    array-length v2, v2

    int-to-long v6, v2

    goto :goto_7

    .line 32006
    :cond_a
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/ec;->A6u()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    goto :goto_6

    .line 32007
    :cond_b
    sget-object v6, Lcom/facebook/ads/redexgen/X/C8;->A08:[Ljava/lang/String;

    const-string v4, "GUaOJDLzyYCGW5Cxc7undAaXJNT5GVew"

    const/4 v3, 0x1

    aput-object v4, v6, v3

    if-eqz v9, :cond_7

    goto :goto_5

    .line 32008
    .end local v0    # "response":Lcom/facebook/ads/redexgen/X/ec;
    .end local v4    # "e":Lcom/facebook/ads/redexgen/X/eq;
    .end local v12    # "startTime":J
    .end local v14    # "isRecoverable":Z
    .restart local v21    # "startTime":J
    :cond_c
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/C8;->A00:Lcom/facebook/ads/redexgen/X/Su;

    .line 32009
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    .line 32010
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    if-nez v3, :cond_d

    const-wide/16 v2, 0x0

    :goto_9
    const/16 v6, 0x52

    const/16 v5, 0x23

    const/16 v4, 0x11

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 32011
    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    move-wide v14, v2

    move-object/from16 v17, v4

    move-wide v8, v0

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/Su;->ABI(JJJJILjava/lang/Exception;)V

    .line 32012
    const/4 v0, 0x0

    return-object v0

    .line 32013
    :cond_d
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/ep;->A04:[B

    array-length v2, v2

    int-to-long v2, v2

    goto :goto_9
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/ei;
    .locals 1

    .line 32014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    return-object v0
.end method

.method public final AGC(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/ec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/ec;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32015
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/er;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/er;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    .line 32016
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A00()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v0

    .line 32017
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/er;Lcom/facebook/ads/redexgen/X/el;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v0

    return-object v0
.end method

.method public final AGD(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/ec;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    .line 32019
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A00()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v3

    .line 32020
    const/16 v2, 0x87

    const/16 v1, 0x2f

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/C8;->A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/el;)Lcom/facebook/ads/redexgen/X/ec;

    move-result-object v0

    return-object v0
.end method

.method public final AGE(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/ee;)V
    .locals 6

    .line 32021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:Lcom/facebook/ads/redexgen/X/ei;

    .line 32022
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ei;->A00()Lcom/facebook/ads/redexgen/X/el;

    move-result-object v5

    .line 32023
    const/16 v2, 0x87

    const/16 v1, 0x2f

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/C8;->A07(III)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p3

    move-object v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/C8;->A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/ee;Lcom/facebook/ads/redexgen/X/el;)V

    .line 32024
    return-void
.end method
