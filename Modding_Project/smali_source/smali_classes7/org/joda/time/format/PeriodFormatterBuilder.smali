.class public Lorg/joda/time/format/PeriodFormatterBuilder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/PeriodFormatterBuilder$Composite;,
        Lorg/joda/time/format/PeriodFormatterBuilder$Separator;,
        Lorg/joda/time/format/PeriodFormatterBuilder$Literal;,
        Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;,
        Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwww()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static Wwwwwwwww(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lorg/joda/time/format/PeriodFormatter;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string p1, "Builder has created neither a printer nor a parser"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    if-lt v0, v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    instance-of v3, v3, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 35
    .line 36
    invoke-static {v3}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodParser;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    invoke-static {v3}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodPrinter;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwww(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodPrinter;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodParser;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v3, p1, p0}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance p1, Lorg/joda/time/format/PeriodFormatter;

    .line 69
    .line 70
    invoke-direct {p1, p0, p0}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_2
    invoke-static {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwww(Ljava/util/List;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const/4 v0, 0x1

    .line 79
    const/4 v1, 0x0

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    new-instance p1, Lorg/joda/time/format/PeriodFormatter;

    .line 83
    .line 84
    aget-object p0, p0, v0

    .line 85
    .line 86
    check-cast p0, Lorg/joda/time/format/PeriodParser;

    .line 87
    .line 88
    invoke-direct {p1, v1, p0}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_3
    if-eqz p2, :cond_4

    .line 93
    .line 94
    new-instance p1, Lorg/joda/time/format/PeriodFormatter;

    .line 95
    .line 96
    aget-object p0, p0, v2

    .line 97
    .line 98
    check-cast p0, Lorg/joda/time/format/PeriodPrinter;

    .line 99
    .line 100
    invoke-direct {p1, p0, v1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_4
    new-instance p1, Lorg/joda/time/format/PeriodFormatter;

    .line 105
    .line 106
    aget-object p2, p0, v2

    .line 107
    .line 108
    check-cast p2, Lorg/joda/time/format/PeriodPrinter;

    .line 109
    .line 110
    aget-object p0, p0, v0

    .line 111
    .line 112
    check-cast p0, Lorg/joda/time/format/PeriodParser;

    .line 113
    .line 114
    invoke-direct {p1, p2, p0}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    .line 115
    .line 116
    .line 117
    return-object p1
.end method

.method public static Wwwwwwwwwww(Ljava/util/List;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_1

    .line 9
    .line 10
    if-eq v3, v2, :cond_0

    .line 11
    .line 12
    new-instance v3, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;

    .line 13
    .line 14
    invoke-direct {v3, p0}, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    new-array p0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object v3, p0, v1

    .line 20
    .line 21
    aput-object v3, p0, v2

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v3, v0, v1

    .line 35
    .line 36
    aput-object p0, v0, v2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    new-array p0, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    sget-object v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    .line 42
    .line 43
    aput-object v0, p0, v1

    .line 44
    .line 45
    aput-object v0, p0, v2

    .line 46
    .line 47
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwww()Lorg/joda/time/format/PeriodFormatter;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwww(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_1

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v5, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 30
    .line 31
    invoke-virtual {v1}, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->clone()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 36
    .line 37
    iput-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 38
    .line 39
    return-object v0
.end method

.method public final Wwwwwwwwwwww()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Prefix not followed by field"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public Wwwwwwwwwwwww()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 16
    .line 17
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 35
    .line 36
    new-array v0, v0, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 37
    .line 38
    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 39
    .line 40
    return-void
.end method

.method public Wwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public Wwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwww([Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x1

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    array-length v1, p2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x2

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    move-object v1, v0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    instance-of v1, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwww()V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 50
    .line 51
    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 52
    .line 53
    invoke-direct {v1, v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;-><init>(Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-int/lit8 v0, v0, -0x2

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 79
    .line 80
    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    aput-object v1, p1, v0

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v0, "No field to apply suffix to"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    const/4 v3, 0x0

    .line 4
    move-object v2, p1

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 11

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwww()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    new-instance v2, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 21
    .line 22
    sget-object v6, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    .line 23
    .line 24
    move-object v7, v6

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object v5, p3

    .line 28
    move v8, p4

    .line 29
    move/from16 v9, p5

    .line 30
    .line 31
    invoke-direct/range {v2 .. v9}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2, v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object p0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 43
    .line 44
    if-ltz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    instance-of v3, v3, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v1, v1, -0x2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v2, 0x0

    .line 73
    :goto_1
    if-eqz v2, :cond_5

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string p2, "Cannot have two adjacent separators"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_5
    :goto_2
    invoke-static {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwww(Ljava/util/List;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    .line 96
    .line 97
    new-instance v3, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    aget-object v2, v1, v2

    .line 101
    .line 102
    move-object v7, v2

    .line 103
    check-cast v7, Lorg/joda/time/format/PeriodPrinter;

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    aget-object v1, v1, v2

    .line 107
    .line 108
    move-object v8, v1

    .line 109
    check-cast v8, Lorg/joda/time/format/PeriodParser;

    .line 110
    .line 111
    move-object v4, p1

    .line 112
    move-object v5, p2

    .line 113
    move-object v6, p3

    .line 114
    move v9, p4

    .line 115
    move/from16 v10, p5

    .line 116
    .line 117
    invoke-direct/range {v3 .. v10}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6

    .line 1
    const/4 v4, 0x1

    .line 2
    const/4 v5, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Literal must not be null"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(II)V
    .locals 9

    .line 1
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 2
    .line 3
    iget v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iget-boolean v4, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    iget-object v6, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 10
    .line 11
    iget-object v7, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    move v5, p1

    .line 15
    move v1, p2

    .line 16
    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;-><init>(IIIZI[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 23
    .line 24
    aput-object v0, p1, v5

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 28
    .line 29
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 3
    .line 4
    .line 5
    return-object p0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    move p1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v1

    .line 20
    :goto_0
    or-int/2addr p1, v0

    .line 21
    iput-boolean p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 22
    .line 23
    iget-boolean p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    :cond_1
    or-int/2addr p1, v1

    .line 29
    iput-boolean p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 30
    .line 31
    return-object p0
.end method
