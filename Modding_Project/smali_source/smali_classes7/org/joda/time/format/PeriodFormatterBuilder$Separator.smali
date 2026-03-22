.class Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/format/PeriodPrinter;
.implements Lorg/joda/time/format/PeriodParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Separator"
.end annotation


# instance fields
.field public volatile Wwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

.field public volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    if-eqz p3, :cond_3

    .line 17
    .line 18
    array-length v0, p3

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    .line 23
    .line 24
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    array-length p1, p3

    .line 38
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 39
    .line 40
    if-ltz p1, :cond_2

    .line 41
    .line 42
    aget-object p2, p3, p1

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    new-array p2, p2, [Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, [Ljava/lang/String;

    .line 67
    .line 68
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :goto_1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 76
    .line 77
    :goto_2
    iput-object p4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 78
    .line 79
    iput-object p5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 80
    .line 81
    iput-boolean p6, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 82
    .line 83
    iput-boolean p7, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 84
    .line 85
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodPrinter;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodParser;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 4
    .line 5
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-interface {v1, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    add-int/2addr v2, v3

    .line 14
    iget-boolean v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    invoke-interface {v0, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_3

    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-interface {v1, p1, v0, p2}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-lez p1, :cond_3

    .line 35
    .line 36
    if-le p1, v4, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    :goto_1
    add-int/2addr v2, p1

    .line 48
    return v2

    .line 49
    :cond_1
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-interface {v1, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-lez p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    return v2
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-interface {v0, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_3

    .line 18
    .line 19
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-interface {v1, p2, v0, p3}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_3

    .line 29
    .line 30
    if-le v0, v3, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v1, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-lez v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge v0, p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 10
    .line 11
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/2addr v0, p1

    .line 16
    :cond_0
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/joda/time/format/PeriodParser;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    if-gez v3, :cond_0

    .line 8
    .line 9
    return v3

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-le v3, p3, :cond_4

    .line 12
    .line 13
    iget-object p3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 14
    .line 15
    array-length v7, p3

    .line 16
    move v8, v0

    .line 17
    :goto_0
    if-ge v8, v7, :cond_4

    .line 18
    .line 19
    aget-object v4, p3, v8

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v2, 0x1

    .line 35
    move-object v1, p2

    .line 36
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 44
    .line 45
    move-object p2, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v1, p2

    .line 48
    :goto_1
    if-nez v4, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_2
    add-int/2addr v3, v0

    .line 56
    const/4 p2, 0x1

    .line 57
    move v9, v0

    .line 58
    move v0, p2

    .line 59
    move p2, v9

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    move-object v1, p2

    .line 62
    const/4 p2, -0x1

    .line 63
    :goto_3
    iget-object p3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 64
    .line 65
    invoke-interface {p3, p1, v1, v3, p4}, Lorg/joda/time/format/PeriodParser;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-gez p1, :cond_5

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    if-eqz v0, :cond_6

    .line 73
    .line 74
    if-ne p1, v3, :cond_6

    .line 75
    .line 76
    if-lez p2, :cond_6

    .line 77
    .line 78
    not-int p1, v3

    .line 79
    return p1

    .line 80
    :cond_6
    if-le p1, v3, :cond_7

    .line 81
    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    iget-boolean p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 85
    .line 86
    if-nez p2, :cond_7

    .line 87
    .line 88
    not-int p1, v3

    .line 89
    :cond_7
    :goto_4
    return p1
.end method
