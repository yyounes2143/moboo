.class public final Lcom/facebook/ads/redexgen/X/aP;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sp;->A0A(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A05:[B


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SQ;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/So;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Sw;

.field public final synthetic A04:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aP;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;Lcom/facebook/ads/redexgen/X/So;)V
    .locals 0

    .line 76087
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aP;->A04:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/Sw;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/So;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aP;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

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

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aP;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        -0x61t
        -0x40t
        -0x43t
        -0x30t
        -0x3et
        0x7bt
        -0x42t
        -0x33t
        -0x44t
        -0x32t
        -0x3dt
        0x7bt
        -0x43t
        -0x40t
        -0x42t
        -0x44t
        -0x30t
        -0x32t
        -0x40t
        0x7bt
        -0x32t
        -0x60t
        -0x37t
        -0x2ft
        -0x3ct
        -0x33t
        -0x36t
        -0x37t
        -0x38t
        -0x40t
        -0x37t
        -0x31t
        -0x61t
        -0x44t
        -0x31t
        -0x44t
        -0x55t
        -0x33t
        -0x36t
        -0x2ft
        -0x3ct
        -0x41t
        -0x40t
        -0x33t
        0x7bt
        -0x37t
        -0x36t
        -0x31t
        0x7bt
        -0x3ct
        -0x37t
        -0x3bt
        -0x40t
        -0x42t
        -0x31t
        -0x40t
        -0x41t
        0x71t
        -0x79t
        -0x74t
        -0x77t
        0x3et
        -0x79t
        -0x6ft
        0x3et
        -0x74t
        -0x6dt
        -0x76t
        -0x76t
        0x3ft
        -0x6dt
        -0x6at
        -0x6at
        -0x65t
        -0x5at
        -0x65t
        -0x5ft
        -0x60t
        -0x6dt
        -0x62t
        -0x6ft
        -0x65t
        -0x60t
        -0x68t
        -0x5ft
        0x74t
        -0x77t
        0x74t
        0x7ct
        0x7ft
        0x74t
        0x75t
        0x7ft
        0x78t
        0x72t
        0x77t
        0x7ct
        -0x7at
        0x7et
        0x72t
        -0x7at
        -0x7dt
        0x74t
        0x76t
        0x78t
        -0x1at
        -0x1ct
        -0x1at
        -0x15t
        -0x18t
        -0x6at
        -0x77t
        -0x79t
        -0x6dt
        -0x6at
        -0x78t
        -0x7dt
        -0x78t
        -0x7bt
        -0x68t
        -0x7bt
        -0x7at
        -0x7bt
        -0x69t
        -0x77t
        -0x3bt
        -0x48t
        -0x3ct
        -0x38t
        -0x48t
        -0x3at
        -0x39t
        -0x4et
        -0x44t
        -0x49t
        -0x73t
        -0x71t
        0x7ct
        -0x72t
        -0x6dt
        -0x76t
        0x7ft
        -0x68t
        -0x66t
        -0x79t
        -0x67t
        -0x62t
        -0x6bt
        -0x76t
        -0x7ct
        -0x78t
        -0x6ct
        -0x77t
        -0x76t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 76088
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aP;->A04:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sp;->A0K(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76089
    return-void

    .line 76090
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/UV;->A0A:Lcom/facebook/ads/redexgen/X/UV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UV;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Ud;->A08(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V

    .line 76091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sw;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 76092
    .local v0, "deLogExceptionCause":Ljava/lang/Throwable;
    if-eqz v1, :cond_8

    .line 76093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/X7;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 76094
    .local v1, "stackTrace":Ljava/lang/String;
    .restart local v1    # "stackTrace":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U9;->A0V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A04()Lcom/facebook/ads/redexgen/X/ST;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ST;->A5S()Ljava/util/Map;

    move-result-object v1

    .line 76096
    .local v2, "debugEventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "debugEventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    const/16 v4, 0x88

    const/4 v2, 0x7

    const/16 v0, 0x13

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aP;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76097
    const/16 v4, 0x8f

    const/16 v2, 0xc

    const/16 v0, 0x1e

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/aP;->A00:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A03()Lorg/json/JSONObject;

    move-result-object v5

    .line 76099
    .local v3, "additionalInfo":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    .line 76100
    const/16 v4, 0x47

    const/16 v2, 0xf

    const/16 v0, 0x2b

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 76101
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76102
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76103
    :cond_1
    const/16 v4, 0x6a

    const/4 v2, 0x5

    const/16 v0, 0x7c

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aP;->A04:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v4, 0x6f

    const/16 v2, 0xf

    const/16 v0, 0x1d

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aP;->A04:Ljava/lang/String;

    .line 76104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76105
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A04()Lcom/facebook/ads/redexgen/X/ST;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ST;->A8D()Ljava/lang/String;

    move-result-object v5

    .line 76106
    .local v4, "lastDiskSpace":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 76107
    const/16 v4, 0x56

    const/16 v2, 0x14

    const/16 v0, 0xc

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76108
    .end local v4    # "lastDiskSpace":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0C()Ljava/lang/String;

    move-result-object v5

    .line 76109
    .local v4, "requestId":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 76110
    const/16 v4, 0x7e

    const/16 v2, 0xa

    const/16 v0, 0x4c

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76111
    :cond_4
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sp;->A03()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Sn;

    .line 76112
    .local v5, "debugEventSink":Lcom/facebook/ads/redexgen/X/Sn;
    if-eqz v2, :cond_a

    .line 76113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-interface {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Sn;->AKK(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/SQ;)V

    goto/16 :goto_2

    .line 76114
    .end local v2    # "debugEventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/So;

    if-eqz v0, :cond_6

    .line 76115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A02:Lcom/facebook/ads/redexgen/X/So;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/So;->A7r()Ljava/util/Map;

    move-result-object v1

    .restart local v2    # "debugEventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 76116
    .end local v2    # "debugEventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Z

    if-eqz v0, :cond_7

    .line 76117
    const/4 v2, 0x1

    const/16 v1, 0x39

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 76118
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/Sw;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Sp;->A0G(Ljava/lang/Throwable;)V

    .line 76119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_1

    .line 76120
    .end local v2
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A04()Lcom/facebook/ads/redexgen/X/ST;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ST;->A5S()Ljava/util/Map;

    move-result-object v1

    goto/16 :goto_1

    .line 76121
    .end local v1    # "stackTrace":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U9;->A0R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 76122
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aP;->A01:Lcom/facebook/ads/redexgen/X/SQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/X7;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .restart local v1    # "stackTrace":Ljava/lang/String;
    goto/16 :goto_0

    .line 76123
    .end local v1    # "stackTrace":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aP;->A03:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sw;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 76124
    :cond_a
    const/16 v2, 0x3a

    const/16 v1, 0xd

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aP;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Sp;->A0G(Ljava/lang/Throwable;)V

    goto :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76125
    :catchall_0
    move-exception v0

    .line 76126
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sp;->A0G(Ljava/lang/Throwable;)V

    .line 76127
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
