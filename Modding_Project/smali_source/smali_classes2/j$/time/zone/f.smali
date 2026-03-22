.class public final Lj$/time/zone/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final i:[J

.field public static final j:[Lj$/time/zone/e;

.field public static final k:[Lj$/time/LocalDateTime;

.field public static final l:[Lj$/time/zone/b;

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field public final a:[J

.field public final b:[Lj$/time/ZoneOffset;

.field public final c:[J

.field public final d:[Lj$/time/LocalDateTime;

.field public final e:[Lj$/time/ZoneOffset;

.field public final f:[Lj$/time/zone/e;

.field public final g:Ljava/util/TimeZone;

.field public final transient h:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 164
    new-array v1, v0, [J

    sput-object v1, Lj$/time/zone/f;->i:[J

    .line 168
    new-array v1, v0, [Lj$/time/zone/e;

    sput-object v1, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    .line 173
    new-array v1, v0, [Lj$/time/LocalDateTime;

    sput-object v1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    .line 789
    new-array v0, v0, [Lj$/time/zone/b;

    sput-object v0, Lj$/time/zone/f;->l:[Lj$/time/zone/b;

    return-void
.end method

.method public constructor <init>(Lj$/time/ZoneOffset;)V
    .locals 2

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 320
    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    .line 321
    aput-object p1, v0, v1

    .line 322
    sget-object p1, Lj$/time/zone/f;->i:[J

    iput-object p1, p0, Lj$/time/zone/f;->a:[J

    .line 323
    iput-object p1, p0, Lj$/time/zone/f;->c:[J

    .line 324
    sget-object p1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    .line 325
    iput-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 326
    sget-object p1, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    iput-object p1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    const/4 p1, 0x0

    .line 327
    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 3

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 332
    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 333
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v1}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 334
    sget-object v1, Lj$/time/zone/f;->i:[J

    iput-object v1, p0, Lj$/time/zone/f;->a:[J

    .line 335
    iput-object v1, p0, Lj$/time/zone/f;->c:[J

    .line 336
    sget-object v1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object v1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    .line 337
    iput-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 338
    sget-object v0, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    iput-object v0, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 339
    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>([J[Lj$/time/ZoneOffset;[J[Lj$/time/ZoneOffset;[Lj$/time/zone/e;)V
    .locals 5

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    .line 285
    iput-object p1, p0, Lj$/time/zone/f;->a:[J

    .line 286
    iput-object p2, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 287
    iput-object p3, p0, Lj$/time/zone/f;->c:[J

    .line 288
    iput-object p4, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 289
    iput-object p5, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 291
    array-length p1, p3

    if-nez p1, :cond_0

    .line 292
    sget-object p1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    goto :goto_2

    .line 295
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move p5, p2

    .line 296
    :goto_0
    array-length v0, p3

    if-ge p5, v0, :cond_2

    .line 297
    aget-object v0, p4, p5

    add-int/lit8 v1, p5, 0x1

    .line 298
    aget-object v2, p4, v1

    .line 299
    aget-wide v3, p3, p5

    .line 175
    invoke-static {v3, v4, p2, v0}, Lj$/time/LocalDateTime;->J(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object p5

    .line 474
    iget v3, v2, Lj$/time/ZoneOffset;->b:I

    .line 351
    iget v0, v0, Lj$/time/ZoneOffset;->b:I

    if-le v3, v0, :cond_1

    .line 301
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget v2, v2, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v2, v0

    int-to-long v2, v2

    .line 294
    invoke-virtual {p5, v2, v3}, Lj$/time/LocalDateTime;->L(J)Lj$/time/LocalDateTime;

    move-result-object p5

    .line 302
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v0

    int-to-long v2, v3

    .line 294
    invoke-virtual {p5, v2, v3}, Lj$/time/LocalDateTime;->L(J)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 304
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move p5, v1

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lj$/time/LocalDateTime;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    :goto_2
    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;
    .locals 5

    .line 280
    iget-object v0, p1, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    .line 474
    iget-object v1, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    iget v2, v1, Lj$/time/ZoneOffset;->b:I

    iget-object v3, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget v4, v3, Lj$/time/ZoneOffset;->b:I

    if-le v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 768
    :goto_0
    iget-object v4, p1, Lj$/time/zone/b;->b:Lj$/time/LocalDateTime;

    if-eqz v2, :cond_2

    .line 769
    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->H(Lj$/time/chrono/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 474
    :cond_1
    iget v0, v1, Lj$/time/ZoneOffset;->b:I

    iget v2, v3, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    .line 294
    invoke-virtual {v4, v2, v3}, Lj$/time/LocalDateTime;->L(J)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 772
    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->H(Lj$/time/chrono/e;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 778
    :cond_2
    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->H(Lj$/time/chrono/e;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-object v1

    .line 474
    :cond_4
    iget v0, v1, Lj$/time/ZoneOffset;->b:I

    iget v1, v3, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 294
    invoke-virtual {v4, v0, v1}, Lj$/time/LocalDateTime;->L(J)Lj$/time/LocalDateTime;

    move-result-object v0

    .line 781
    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->H(Lj$/time/chrono/e;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_1
    return-object v3

    :cond_5
    :goto_2
    return-object p1
.end method

.method public static c(JLj$/time/ZoneOffset;)I
    .locals 2

    .line 474
    iget p2, p2, Lj$/time/ZoneOffset;->b:I

    int-to-long v0, p2

    add-long/2addr p0, v0

    const p2, 0x15180

    int-to-long v0, p2

    .line 0
    invoke-static {p0, p1, v0, v1}, Lj$/com/android/tools/r8/a;->O(JJ)J

    move-result-wide p0

    .line 1157
    invoke-static {p0, p1}, Lj$/time/LocalDate;->O(J)Lj$/time/LocalDate;

    move-result-object p0

    .line 762
    iget p0, p0, Lj$/time/LocalDate;->a:I

    return p0
.end method

.method public static h(I)Lj$/time/ZoneOffset;
    .locals 0

    .line 344
    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Lj$/time/ZoneOffset;->M(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 354
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 422
    new-instance v0, Lj$/time/zone/a;

    iget-object v1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1, p0}, Lj$/time/zone/a;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public final b(I)[Lj$/time/zone/b;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 798
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 799
    iget-object v5, v0, Lj$/time/zone/f;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lj$/time/zone/b;

    if-eqz v6, :cond_0

    return-object v6

    :cond_0
    const/16 v6, 0x834

    .line 804
    iget-object v9, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v9, :cond_9

    .line 805
    sget-object v10, Lj$/time/zone/f;->l:[Lj$/time/zone/b;

    const/16 v11, 0x708

    if-ge v1, v11, :cond_1

    return-object v10

    :cond_1
    add-int/lit8 v11, v1, -0x1

    .line 808
    sget-object v12, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    const/16 v12, 0xc

    const/16 v13, 0x1f

    .line 311
    invoke-static {v11, v12, v13}, Lj$/time/LocalDate;->N(III)Lj$/time/LocalDate;

    move-result-object v11

    .line 296
    sget-object v12, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v13, v2

    invoke-virtual {v12, v13, v14}, Lj$/time/temporal/a;->u(J)V

    .line 298
    sget-object v12, Lj$/time/LocalTime;->h:[Lj$/time/LocalTime;

    aget-object v12, v12, v2

    .line 313
    new-instance v13, Lj$/time/LocalDateTime;

    invoke-direct {v13, v11, v12}, Lj$/time/LocalDateTime;-><init>(Lj$/time/LocalDate;Lj$/time/LocalTime;)V

    .line 810
    iget-object v11, v0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object v2, v11, v2

    .line 0
    invoke-static {v13, v2}, Lj$/com/android/tools/r8/a;->v(Lj$/time/chrono/e;Lj$/time/ZoneOffset;)J

    move-result-wide v11

    const-wide/16 v15, 0x3e8

    mul-long v13, v11, v15

    .line 811
    invoke-virtual {v9, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    const-wide/32 v13, 0x1e7cb00

    add-long/2addr v13, v11

    :goto_0
    cmp-long v17, v11, v13

    if-gez v17, :cond_7

    const-wide/32 v17, 0x76a700

    add-long v17, v11, v17

    const-wide/16 v19, 0x1

    mul-long v7, v17, v15

    .line 816
    invoke-virtual {v9, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    if-eq v2, v7, :cond_6

    :goto_1
    sub-long v7, v17, v11

    cmp-long v7, v7, v19

    if-lez v7, :cond_3

    add-long v7, v17, v11

    move/from16 v21, v3

    move-object/from16 v22, v4

    const-wide/16 v3, 0x2

    .line 819
    invoke-static {v7, v8, v3, v4}, Lj$/com/android/tools/r8/a;->O(JJ)J

    move-result-wide v3

    mul-long v7, v3, v15

    .line 820
    invoke-virtual {v9, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    if-ne v7, v2, :cond_2

    move-wide v11, v3

    goto :goto_2

    :cond_2
    move-wide/from16 v17, v3

    :goto_2
    move/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_1

    :cond_3
    move/from16 v21, v3

    move-object/from16 v22, v4

    mul-long v3, v11, v15

    .line 826
    invoke-virtual {v9, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    if-eq v3, v2, :cond_4

    goto :goto_3

    :cond_4
    move-wide/from16 v11, v17

    .line 829
    :goto_3
    invoke-static {v2}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v2

    mul-long v3, v11, v15

    .line 830
    invoke-virtual {v9, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 831
    invoke-static {v3}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v4

    .line 832
    invoke-static {v11, v12, v4}, Lj$/time/zone/f;->c(JLj$/time/ZoneOffset;)I

    move-result v7

    if-ne v7, v1, :cond_5

    .line 833
    array-length v7, v10

    add-int/lit8 v7, v7, 0x1

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lj$/time/zone/b;

    .line 834
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    new-instance v10, Lj$/time/zone/b;

    invoke-direct {v10, v11, v12, v2, v4}, Lj$/time/zone/b;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    aput-object v10, v7, v8

    move v2, v3

    move-object v10, v7

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    move/from16 v21, v3

    move-object/from16 v22, v4

    move-wide/from16 v11, v17

    :goto_4
    move/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_0

    :cond_7
    move-object/from16 v22, v4

    const/16 v2, 0x77c

    if-gt v2, v1, :cond_8

    if-ge v1, v6, :cond_8

    move-object/from16 v3, v22

    .line 842
    invoke-interface {v5, v3, v10}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v10

    :cond_9
    move/from16 v21, v3

    move-object v3, v4

    const-wide/16 v19, 0x1

    .line 847
    iget-object v4, v0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length v7, v4

    new-array v7, v7, [Lj$/time/zone/b;

    move v8, v2

    .line 848
    :goto_5
    array-length v9, v4

    if-ge v8, v9, :cond_10

    .line 849
    aget-object v9, v4, v8

    .line 489
    iget-object v10, v9, Lj$/time/zone/e;->c:Lj$/time/d;

    .line 489
    const-string v11, "month"

    iget-object v12, v9, Lj$/time/zone/e;->a:Lj$/time/j;

    iget-byte v13, v9, Lj$/time/zone/e;->b:B

    if-gez v13, :cond_c

    .line 490
    sget-object v14, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    move-object/from16 v16, v7

    int-to-long v6, v1

    invoke-virtual {v14, v6, v7}, Lj$/time/chrono/s;->C(J)Z

    move-result v14

    invoke-virtual {v12, v14}, Lj$/time/j;->G(Z)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v13

    sget-object v13, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    .line 248
    sget-object v13, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v13, v6, v7}, Lj$/time/temporal/a;->u(J)V

    .line 249
    invoke-static {v12, v11}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    sget-object v6, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    move-object/from16 v22, v3

    int-to-long v2, v14

    invoke-virtual {v6, v2, v3}, Lj$/time/temporal/a;->u(J)V

    .line 251
    invoke-virtual {v12}, Lj$/time/j;->getValue()I

    move-result v2

    invoke-static {v1, v2, v14}, Lj$/time/LocalDate;->G(III)Lj$/time/LocalDate;

    move-result-object v2

    if-eqz v10, :cond_a

    .line 467
    invoke-virtual {v10}, Lj$/time/d;->getValue()I

    move-result v3

    .line 468
    new-instance v6, Lj$/time/temporal/o;

    move/from16 v10, v21

    invoke-direct {v6, v3, v10}, Lj$/time/temporal/o;-><init>(II)V

    .line 492
    invoke-virtual {v2, v6}, Lj$/time/LocalDate;->U(Lj$/time/temporal/n;)Lj$/time/LocalDate;

    move-result-object v2

    :cond_a
    move v3, v8

    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v22, v3

    move-object/from16 v16, v7

    .line 495
    sget-object v2, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    .line 248
    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    move v3, v8

    int-to-long v7, v1

    invoke-virtual {v2, v7, v8}, Lj$/time/temporal/a;->u(J)V

    .line 249
    invoke-static {v12, v11}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v7, v13

    invoke-virtual {v2, v7, v8}, Lj$/time/temporal/a;->u(J)V

    .line 251
    invoke-virtual {v12}, Lj$/time/j;->getValue()I

    move-result v2

    invoke-static {v1, v2, v13}, Lj$/time/LocalDate;->G(III)Lj$/time/LocalDate;

    move-result-object v2

    if-eqz v10, :cond_b

    .line 413
    invoke-virtual {v10}, Lj$/time/d;->getValue()I

    move-result v7

    .line 414
    new-instance v8, Lj$/time/temporal/o;

    const/4 v6, 0x0

    invoke-direct {v8, v7, v6}, Lj$/time/temporal/o;-><init>(II)V

    .line 497
    invoke-virtual {v2, v8}, Lj$/time/LocalDate;->U(Lj$/time/temporal/n;)Lj$/time/LocalDate;

    move-result-object v2

    .line 500
    :goto_6
    iget-boolean v7, v9, Lj$/time/zone/e;->e:Z

    if-eqz v7, :cond_d

    move-wide/from16 v7, v19

    .line 501
    invoke-virtual {v2, v7, v8}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object v2

    goto :goto_7

    :cond_d
    move-wide/from16 v7, v19

    .line 503
    :goto_7
    iget-object v10, v9, Lj$/time/zone/e;->d:Lj$/time/LocalTime;

    invoke-static {v2, v10}, Lj$/time/LocalDateTime;->I(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 504
    iget-object v10, v9, Lj$/time/zone/e;->f:Lj$/time/zone/d;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    sget-object v11, Lj$/time/zone/c;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    iget-object v11, v9, Lj$/time/zone/e;->h:Lj$/time/ZoneOffset;

    iget v12, v11, Lj$/time/ZoneOffset;->b:I

    const/4 v13, 0x1

    if-eq v10, v13, :cond_f

    const/4 v13, 0x2

    if-eq v10, v13, :cond_e

    goto :goto_8

    .line 474
    :cond_e
    iget-object v10, v9, Lj$/time/zone/e;->g:Lj$/time/ZoneOffset;

    .line 623
    iget v10, v10, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    .line 624
    invoke-virtual {v2, v12, v13}, Lj$/time/LocalDateTime;->L(J)Lj$/time/LocalDateTime;

    move-result-object v2

    goto :goto_8

    .line 619
    :cond_f
    sget-object v10, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 474
    iget v10, v10, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    .line 620
    invoke-virtual {v2, v12, v13}, Lj$/time/LocalDateTime;->L(J)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 505
    :goto_8
    new-instance v10, Lj$/time/zone/b;

    iget-object v9, v9, Lj$/time/zone/e;->i:Lj$/time/ZoneOffset;

    invoke-direct {v10, v2, v11, v9}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    .line 849
    aput-object v10, v16, v3

    const/16 v21, 0x1

    add-int/lit8 v2, v3, 0x1

    move-wide/from16 v19, v7

    move-object/from16 v7, v16

    move-object/from16 v3, v22

    move v8, v2

    move v2, v6

    const/16 v6, 0x834

    goto/16 :goto_5

    :cond_10
    move-object/from16 v22, v3

    move v15, v6

    move-object/from16 v16, v7

    if-ge v1, v15, :cond_11

    move-object/from16 v1, v16

    move-object/from16 v3, v22

    .line 852
    invoke-interface {v5, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_11
    move-object/from16 v1, v16

    return-object v1
.end method

.method public final d(Lj$/time/Instant;)Lj$/time/ZoneOffset;
    .locals 7

    .line 531
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    .line 534
    :cond_0
    iget-object v0, p0, Lj$/time/zone/f;->c:[J

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 535
    iget-object p1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object p1, p1, v2

    return-object p1

    .line 537
    :cond_1
    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v3

    .line 539
    iget-object p1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length p1, p1

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    if-lez p1, :cond_4

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-wide v5, v0, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    .line 541
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v1, p1

    invoke-static {v3, v4, p1}, Lj$/time/zone/f;->c(JLj$/time/ZoneOffset;)I

    move-result p1

    .line 542
    invoke-virtual {p0, p1}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 544
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_3

    .line 545
    aget-object v0, p1, v2

    .line 263
    iget-wide v5, v0, Lj$/time/zone/b;->a:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 305
    iget-object p1, v0, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_3
    iget-object p1, v0, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    return-object p1

    .line 554
    :cond_4
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_5

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 559
    aget-object p1, v1, p1

    return-object p1
.end method

.method public final e(Lj$/time/LocalDateTime;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    const/4 v2, 0x0

    iget-object v3, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v3, :cond_4

    .line 762
    iget-object v4, p1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 762
    iget v4, v4, Lj$/time/LocalDate;->a:I

    .line 691
    invoke-virtual {p0, v4}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object v4

    .line 692
    array-length v5, v4

    if-nez v5, :cond_0

    .line 696
    aget-object v0, v1, v2

    .line 0
    invoke-static {p1, v0}, Lj$/com/android/tools/r8/a;->v(Lj$/time/chrono/e;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 697
    invoke-virtual {v3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 696
    invoke-static {p1}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    .line 701
    :cond_0
    array-length v1, v4

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v0, v4, v2

    .line 702
    invoke-static {p1, v0}, Lj$/time/zone/f;->a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;

    move-result-object v3

    .line 703
    instance-of v5, v3, Lj$/time/zone/b;

    if-nez v5, :cond_2

    iget-object v0, v0, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    return-object v0

    .line 709
    :cond_4
    iget-object v3, p0, Lj$/time/zone/f;->c:[J

    array-length v3, v3

    if-nez v3, :cond_5

    .line 710
    aget-object p1, v1, v2

    return-object p1

    .line 713
    :cond_5
    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length v1, v1

    iget-object v3, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    if-lez v1, :cond_b

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    .line 714
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1857
    iget-object v4, p1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    if-eqz v1, :cond_6

    .line 1858
    invoke-virtual {p1, v1}, Lj$/time/LocalDateTime;->F(Lj$/time/LocalDateTime;)I

    move-result v1

    if-lez v1, :cond_b

    goto :goto_2

    .line 532
    :cond_6
    invoke-virtual {v4}, Lj$/time/LocalDate;->s()J

    move-result-wide v5

    .line 736
    iget-object v7, v1, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 533
    invoke-virtual {v7}, Lj$/time/LocalDate;->s()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_7

    if-nez v5, :cond_b

    .line 535
    iget-object v5, p1, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    invoke-virtual {v5}, Lj$/time/LocalTime;->Q()J

    move-result-wide v5

    iget-object v1, v1, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    invoke-virtual {v1}, Lj$/time/LocalTime;->Q()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_b

    .line 762
    :cond_7
    :goto_2
    iget v1, v4, Lj$/time/LocalDate;->a:I

    .line 715
    invoke-virtual {p0, v1}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object v1

    .line 717
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_a

    aget-object v0, v1, v2

    .line 718
    invoke-static {p1, v0}, Lj$/time/zone/f;->a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;

    move-result-object v4

    .line 719
    instance-of v5, v4, Lj$/time/zone/b;

    if-nez v5, :cond_9

    iget-object v0, v0, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move-object v0, v4

    goto :goto_3

    :cond_9
    :goto_4
    return-object v4

    :cond_a
    return-object v0

    .line 727
    :cond_b
    invoke-static {v3, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    .line 728
    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    if-ne p1, v0, :cond_c

    .line 730
    aget-object p1, v1, v2

    return-object p1

    :cond_c
    if-gez p1, :cond_d

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    goto :goto_5

    .line 735
    :cond_d
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_e

    aget-object v0, v3, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v4, v3, v2

    .line 736
    invoke-virtual {v0, v4}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move p1, v2

    :cond_e
    :goto_5
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_10

    .line 742
    aget-object v0, v3, p1

    add-int/lit8 v2, p1, 0x1

    .line 743
    aget-object v2, v3, v2

    .line 744
    div-int/lit8 p1, p1, 0x2

    aget-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 745
    aget-object p1, v1, p1

    .line 474
    iget v1, p1, Lj$/time/ZoneOffset;->b:I

    iget v4, v3, Lj$/time/ZoneOffset;->b:I

    if-le v1, v4, :cond_f

    .line 748
    new-instance v1, Lj$/time/zone/b;

    invoke-direct {v1, v0, v3, p1}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v1

    .line 751
    :cond_f
    new-instance v0, Lj$/time/zone/b;

    invoke-direct {v0, v2, v3, p1}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v0

    .line 755
    :cond_10
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1222
    :cond_0
    instance-of v1, p1, Lj$/time/zone/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1223
    check-cast p1, Lj$/time/zone/f;

    .line 1226
    iget-object v1, p1, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    iget-object v3, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    invoke-static {v3, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->a:[J

    iget-object v3, p1, Lj$/time/zone/f;->a:[J

    .line 1227
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 1228
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->c:[J

    iget-object v3, p1, Lj$/time/zone/f;->c:[J

    .line 1229
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 1230
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    iget-object p1, p1, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 1231
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f(Lj$/time/LocalDateTime;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 642
    invoke-virtual {p0, p1}, Lj$/time/zone/f;->e(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object p1

    .line 643
    instance-of v3, p1, Lj$/time/zone/b;

    if-eqz v3, :cond_2

    .line 644
    check-cast p1, Lj$/time/zone/b;

    .line 474
    iget-object v3, p1, Lj$/time/zone/b;->d:Lj$/time/ZoneOffset;

    iget v4, v3, Lj$/time/ZoneOffset;->b:I

    iget-object p1, p1, Lj$/time/zone/b;->c:Lj$/time/ZoneOffset;

    iget v5, p1, Lj$/time/ZoneOffset;->b:I

    if-le v4, v5, :cond_0

    .line 390
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 0
    :cond_0
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v3, v4, v0

    .line 0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v4, v1

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 646
    :cond_2
    check-cast p1, Lj$/time/ZoneOffset;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/time/Instant;)Z
    .locals 4

    .line 872
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Lj$/time/zone/f;->h(I)Lj$/time/ZoneOffset;

    move-result-object v0

    goto :goto_0

    .line 875
    :cond_0
    iget-object v0, p0, Lj$/time/zone/f;->c:[J

    array-length v0, v0

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 876
    aget-object v0, v1, v0

    goto :goto_0

    .line 878
    :cond_1
    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 879
    iget-object v0, p0, Lj$/time/zone/f;->a:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 884
    aget-object v0, v1, v0

    .line 934
    :goto_0
    invoke-virtual {p0, p1}, Lj$/time/zone/f;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1245
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/f;->a:[J

    .line 1246
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 1247
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->c:[J

    .line 1248
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 1249
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 1250
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1261
    const-string v0, "]"

    iget-object v1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    .line 1262
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneRules[timeZone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1264
    :cond_0
    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneRules[currentStandardOffset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
