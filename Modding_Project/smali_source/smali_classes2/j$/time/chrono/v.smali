.class public final Lj$/time/chrono/v;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/chrono/v;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lj$/time/chrono/v;

    invoke-direct {v0}, Lj$/time/chrono/v;-><init>()V

    sput-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 547
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final C(J)Z
    .locals 1

    .line 338
    sget-object v0, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/s;->C(J)Z

    move-result p1

    return p1
.end method

.method public final D(I)Lj$/time/chrono/m;
    .locals 0

    .line 382
    invoke-static {p1}, Lj$/time/chrono/y;->q(I)Lj$/time/chrono/y;

    move-result-object p1

    return-object p1
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "Japanese"

    return-object v0
.end method

.method public final i(Lj$/time/temporal/a;)Lj$/time/temporal/t;
    .locals 11

    .line 400
    sget-object v0, Lj$/time/chrono/u;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    return-object p1

    .line 429
    :pswitch_0
    sget-object p1, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    .line 422
    iget p1, p1, Lj$/time/chrono/y;->a:I

    int-to-long v0, p1

    .line 199
    sget-object p1, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object p1, p1, v3

    .line 422
    iget p1, p1, Lj$/time/chrono/y;->a:I

    int-to-long v2, p1

    .line 429
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 425
    :pswitch_1
    sget-object p1, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    .line 762
    iget p1, p1, Lj$/time/LocalDate;->a:I

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9ac9ff

    .line 425
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 422
    :pswitch_2
    sget-object p1, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    .line 226
    sget-object p1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    .line 227
    sget-object v0, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v3, v0

    iget-wide v4, p1, Lj$/time/temporal/t;->c:J

    move-wide v6, v4

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object p1, v0, v1

    .line 228
    iget-object v4, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    invoke-virtual {v4}, Lj$/time/LocalDate;->A()I

    move-result v4

    iget-object v5, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    invoke-virtual {v5}, Lj$/time/LocalDate;->K()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-long v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 229
    invoke-virtual {p1}, Lj$/time/chrono/y;->m()Lj$/time/chrono/y;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 230
    invoke-virtual {p1}, Lj$/time/chrono/y;->m()Lj$/time/chrono/y;

    move-result-object p1

    iget-object p1, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->K()I

    move-result p1

    sub-int/2addr p1, v2

    int-to-long v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_0
    move-wide v6, v4

    add-int/2addr v1, v2

    goto :goto_0

    .line 422
    :cond_1
    sget-object p1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object p1, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    const-wide/16 v4, 0x1

    .line 147
    iget-wide v8, p1, Lj$/time/temporal/t;->d:J

    invoke-static/range {v4 .. v9}, Lj$/time/temporal/t;->f(JJJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 199
    :pswitch_3
    sget-object p1, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    .line 272
    iget-object v0, v0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 199
    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object v3, p1, v3

    .line 208
    iget-object v3, v3, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    const v4, 0x3b9aca00

    iget v3, v3, Lj$/time/LocalDate;->a:I

    sub-int/2addr v4, v3

    .line 209
    aget-object v1, p1, v1

    iget-object v1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 210
    iget v1, v1, Lj$/time/LocalDate;->a:I

    move v3, v2

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 211
    aget-object v5, p1, v3

    .line 212
    iget-object v6, v5, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    iget v6, v6, Lj$/time/LocalDate;->a:I

    sub-int/2addr v6, v1

    add-int/2addr v6, v2

    .line 213
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 762
    iget-object v1, v5, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    add-int/2addr v3, v2

    .line 210
    iget v1, v1, Lj$/time/LocalDate;->a:I

    goto :goto_1

    :cond_2
    int-to-long v7, v4

    const p1, 0x3b9ac9ff

    .line 414
    iget v0, v0, Lj$/time/LocalDate;->a:I

    sub-int/2addr p1, v0

    int-to-long v9, p1

    const-wide/16 v5, 0x1

    .line 147
    invoke-static/range {v5 .. v10}, Lj$/time/temporal/t;->f(JJJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 405
    :pswitch_4
    new-instance v0, Lj$/time/temporal/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 405
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lj$/time/temporal/m;)Lj$/time/chrono/b;
    .locals 1

    .line 301
    instance-of v0, p1, Lj$/time/chrono/x;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lj$/time/chrono/x;

    return-object p1

    .line 304
    :cond_0
    new-instance v0, Lj$/time/chrono/x;

    invoke-static {p1}, Lj$/time/LocalDate;->H(Lj$/time/temporal/m;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "japanese"

    return-object v0
.end method

.method public final w(I)Lj$/time/chrono/b;
    .locals 2

    .line 224
    new-instance v0, Lj$/time/chrono/x;

    const/4 v1, 0x1

    invoke-static {p1, v1, v1}, Lj$/time/LocalDate;->N(III)Lj$/time/LocalDate;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 747
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
