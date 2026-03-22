.class public Lorg/joda/time/format/PeriodFormatter;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 3
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 5
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 8
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 9
    iput-object p3, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 10
    iput-object p4, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lorg/joda/time/format/PeriodFormatter;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3, p1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/joda/time/format/PeriodFormatter;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 23
    .line 24
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, p1, v3}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    :goto_0
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodPrinter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-interface {v0, p1, v2}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/format/PeriodPrinter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/Period;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lorg/joda/time/base/AbstractPeriod;->toPeriod()Lorg/joda/time/Period;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/joda/time/MutablePeriod;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/MutablePeriod;-><init>(JLorg/joda/time/PeriodType;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodParser;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-interface {v1, v0, p1, v2, v3}, Lorg/joda/time/format/PeriodParser;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ltz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-lt v1, v2, :cond_1

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    not-int v1, v1

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-static {p1, v1}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodParser;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2, p3, v1}, Lorg/joda/time/format/PeriodParser;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodPrinter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodPrinter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "Printing not supported"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, "Period must not be null"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodParser;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "Parsing not supported"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method
