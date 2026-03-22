.class public abstract Lcom/facebook/ads/redexgen/X/im;
.super Lcom/facebook/ads/redexgen/X/MH;
.source ""


# static fields
.field public static A04:Ljava/lang/String;

.field public static A05:Ljava/lang/String;

.field public static A06:Ljava/lang/String;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/MO;

.field public final A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2991
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yKsrGZvRhlHO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9EputwQvm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xy4ysuU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7AjoeEFyRFUmAcGguWz5skIE39kXLiT8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yw7hkrjnug4F5v8JlqxYlpspwNYrqeOP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YdvcKbM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Mv5W7ZjuxpjDlIvwBIaHg3eS9AlP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wZHnfIG7rJSoOb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/im;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/im;->A0E()V

    const/16 v2, 0x40

    const/4 v1, 0x7

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/im;->A04:Ljava/lang/String;

    .line 2992
    const/16 v2, 0x55

    const/16 v1, 0x18

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/im;->A05:Ljava/lang/String;

    .line 2993
    const/16 v2, 0x76

    const/16 v1, 0x10

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/im;->A06:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MO;Z)V
    .locals 7

    .line 86613
    const/4 v6, 0x0

    move-object v0, p0

    move v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/im;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MO;ZZ)V

    .line 86614
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MO;ZZ)V
    .locals 2

    .line 86615
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;)V

    .line 86616
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/im;->A00:I

    .line 86617
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    .line 86618
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/im;->A03:Z

    .line 86619
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/im;->A01:Z

    .line 86620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    if-eqz v0, :cond_0

    .line 86621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/in;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/in;-><init>(Lcom/facebook/ads/redexgen/X/im;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MO;->A07(Lcom/facebook/ads/redexgen/X/MG;)V

    .line 86622
    :cond_0
    return-void
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0E()V
    .locals 4

    const/16 v0, 0x86

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/im;->A08:[Ljava/lang/String;

    const-string v1, "E0qxoPtldo8saq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/im;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x13t
        0x16t
        0x1ct
        0x14t
        0x5ft
        0x13t
        0x10t
        0x18t
        0x18t
        0x1at
        0x1bt
        0x18t
        0x17t
        0x1dt
        0xbt
        0x16t
        0x10t
        0x1dt
        0x57t
        0x10t
        0x17t
        0xdt
        0x1ct
        0x17t
        0xdt
        0x57t
        0x18t
        0x1at
        0xdt
        0x10t
        0x16t
        0x17t
        0x57t
        0x2ft
        0x30t
        0x3ct
        0x2et
        0x11t
        0x12t
        0x10t
        0x18t
        0x2ct
        0x7t
        0x1at
        0x1et
        0x16t
        0x23t
        0x2at
        0x2et
        0x39t
        0x2at
        0x10t
        0x3bt
        0x26t
        0x22t
        0x2at
        0x22t
        0x38t
        0x39t
        0x2et
        0x22t
        0x20t
        0x28t
        0x29t
        0x2ft
        0x39t
        0x39t
        0x3ft
        0x29t
        0x29t
        0x41t
        0x5at
        0x5dt
        0x42t
        0x51t
        0x46t
        0x47t
        0x55t
        0x58t
        0x6bt
        0x58t
        0x5dt
        0x5at
        0x5ft
        0x14t
        0x12t
        0x4t
        0x13t
        0x3et
        0x15t
        0x13t
        0x0t
        0x2t
        0xat
        0x4t
        0x13t
        0x3et
        0x8t
        0x12t
        0x3et
        0xft
        0xet
        0x15t
        0x3et
        0xft
        0x14t
        0xdt
        0xdt
        0x7t
        0x1t
        0x17t
        0x0t
        0x11t
        0x1et
        0x1bt
        0x11t
        0x19t
        0x6ft
        0x79t
        0x6ct
        0x7bt
        0x70t
        0x47t
        0x79t
        0x76t
        0x7ct
        0x47t
        0x7at
        0x6at
        0x77t
        0x6ft
        0x6bt
        0x7dt
    .end array-data
.end method


# virtual methods
.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 2

    .line 86623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    if-eqz v0, :cond_0

    .line 86624
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MO;->A08(Ljava/lang/String;)V

    .line 86625
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/a5;->A04(Lcom/facebook/ads/redexgen/X/dL;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86626
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/ME;

    return-object v0

    .line 86627
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/im;->A0L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86628
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A06:Lcom/facebook/ads/redexgen/X/ME;

    return-object v0

    .line 86629
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/im;->A0H()Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0H()Lcom/facebook/ads/redexgen/X/ME;
.end method

.method public final synthetic A0I()V
    .locals 4

    .line 86630
    iget v0, p0, Lcom/facebook/ads/redexgen/X/im;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/im;->A00:I

    .line 86631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/im;->A0L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:Lcom/facebook/ads/redexgen/X/MF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/im;->A08:[Ljava/lang/String;

    const-string v1, "ZLZB3DtfqcSTIr4ga6zBSlI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 86632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A00:Lcom/facebook/ads/redexgen/X/MF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MF;->ACB()V

    .line 86633
    :cond_1
    return-void
.end method

.method public final A0J(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/ME;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/ME;",
            ")V"
        }
    .end annotation

    .line 86634
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86635
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/7Q;

    if-eqz v0, :cond_4

    .line 86636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/US;->ABX(Ljava/lang/String;Ljava/util/Map;)V

    .line 86637
    :goto_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/ME;->A02(Lcom/facebook/ads/redexgen/X/ME;)Z

    move-result v4

    .line 86638
    .local v0, "isError":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 86639
    .local v1, "userTrackerIsNotNull":Z
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86640
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86641
    .local v2, "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A04:Ljava/lang/String;

    xor-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86642
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A05:Ljava/lang/String;

    .line 86643
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 86644
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86645
    sget-object v1, Lcom/facebook/ads/redexgen/X/im;->A06:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/im;->A01:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->ABH(Ljava/lang/String;Ljava/util/Map;)V

    .line 86647
    .end local v2    # "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    if-eqz v0, :cond_2

    .line 86648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/MO;->A06(Lcom/facebook/ads/redexgen/X/ME;)V

    .line 86649
    if-eqz v4, :cond_1

    .line 86650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A02:Lcom/facebook/ads/redexgen/X/MO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MO;->A05()V

    .line 86651
    .end local v0    # "isError":Z
    .end local v1    # "userTrackerIsNotNull":Z
    .end local v2
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/WX;->A04(Landroid/content/Context;Ljava/lang/String;)V

    .line 86652
    return-void

    .line 86653
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 86654
    .local v2, "userReturnDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 86655
    const/16 v2, 0x2f

    const/16 v1, 0xa

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86656
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 86657
    const/16 v2, 0x26

    const/16 v1, 0x9

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86658
    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A05:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ME;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x39

    const/4 v1, 0x7

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/US;->ABY(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 86660
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 86661
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A02:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/US;->AB8(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public final A0K(Landroid/net/Uri;)Z
    .locals 4

    .line 86662
    const/4 v1, 0x0

    .line 86663
    .local v0, "redirectedToApp":Z
    :try_start_0
    const/16 v3, 0x47

    const/16 v2, 0xe

    const/4 v0, 0x4

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86664
    .local v1, "universalLink":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86665
    const/16 v2, 0xc

    const/16 v1, 0x1a

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    .line 86666
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86667
    .local v2, "launchIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86668
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v2, v0, :cond_0

    .line 86669
    const/16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86670
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WB;->A0D(Lcom/facebook/ads/redexgen/X/dL;Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/W9; {:try_start_0 .. :try_end_0} :catch_0

    .line 86671
    .local v1, "e":Lcom/facebook/ads/redexgen/X/W9;
    :catch_0
    const/4 v1, 0x0

    .line 86672
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/W9;
    :cond_1
    :goto_0
    return v1
.end method

.method public final A0L(Ljava/lang/String;)Z
    .locals 3

    .line 86673
    if-eqz p1, :cond_0

    const/16 v2, 0x6d

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/im;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/im;->A00:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/im;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 86674
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0I(Landroid/content/Context;)I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    .line 86675
    :goto_0
    return v0

    .line 86676
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
