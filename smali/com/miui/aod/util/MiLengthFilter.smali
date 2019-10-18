.class public abstract Lcom/miui/aod/util/MiLengthFilter;
.super Ljava/lang/Object;
.source "MiLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final CJK_TIMES_E:I = 0x3


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/aod/util/MiLengthFilter;->mMax:I

    return-void
.end method

.method private getKeepCharCount(Ljava/lang/CharSequence;III)I
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    invoke-static {v2}, Lcom/miui/aod/Utils;->isCJKCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/miui/aod/Utils;->isControlCharactor(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_1
    if-ne v0, p4, :cond_2

    return v1

    :cond_2
    if-le v0, p4, :cond_3

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_3
    add-int/2addr p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return p0
.end method

.method private getRealCount(Ljava/lang/CharSequence;II)I
    .locals 3

    const/4 p0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    invoke-static {v0}, Lcom/miui/aod/Utils;->isCJKCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/miui/aod/Utils;->isControlCharactor(I)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    :cond_1
    :goto_1
    add-int/2addr p2, v1

    goto :goto_0

    :cond_2
    return p0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/aod/util/MiLengthFilter;->getRealCount(Ljava/lang/CharSequence;II)I

    move-result v0

    invoke-direct {p0, p4, p5, p6}, Lcom/miui/aod/util/MiLengthFilter;->getRealCount(Ljava/lang/CharSequence;II)I

    move-result p5

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p6

    const/4 v1, 0x0

    invoke-direct {p0, p4, v1, p6}, Lcom/miui/aod/util/MiLengthFilter;->getRealCount(Ljava/lang/CharSequence;II)I

    move-result p4

    iget p6, p0, Lcom/miui/aod/util/MiLengthFilter;->mMax:I

    sub-int/2addr p4, p5

    sub-int/2addr p6, p4

    const/4 p4, 0x1

    if-gtz p6, :cond_0

    invoke-virtual {p0, p4}, Lcom/miui/aod/util/MiLengthFilter;->onExccedLimit(Z)V

    const-string p0, ""

    return-object p0

    :cond_0
    if-lt p6, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/aod/util/MiLengthFilter;->onExccedLimit(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p4}, Lcom/miui/aod/util/MiLengthFilter;->onExccedLimit(Z)V

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/miui/aod/util/MiLengthFilter;->getKeepCharCount(Ljava/lang/CharSequence;III)I

    move-result p0

    if-gtz p0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    add-int/2addr p0, p2

    add-int/lit8 p3, p0, -0x1

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_3

    add-int/lit8 p0, p0, -0x1

    if-ne p0, p2, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    invoke-interface {p1, p2, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/util/MiLengthFilter;->mMax:I

    return p0
.end method

.method public abstract onExccedLimit(Z)V
.end method
