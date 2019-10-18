.class public Lcom/miui/aod/settings/AODFragment;
.super Lmiui/preference/PreferenceFragment;
.source "AODFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAodEndPref:Lmiui/preference/ValuePreference;

.field private mAodShowPref:Landroid/preference/PreferenceCategory;

.field private mAodStartPref:Lmiui/preference/ValuePreference;

.field private mContext:Landroid/content/Context;

.field private mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

.field private mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

.field private mEnableAODPref:Landroid/preference/CheckBoxPreference;

.field private mEndTime:I

.field private mOnTimeSetListener:Lmiui/app/TimePickerDialog$OnTimeSetListener;

.field private mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

.field private mShowStylePref:Landroid/preference/ListPreference;

.field private mStartTime:I

.field private mStylePref:Landroid/preference/Preference;

.field private mSummaryText:Landroid/view/View;

.field private mTimeFlag:Z

.field private mTimePickerDialog:Lmiui/app/TimePickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/aod/settings/AODFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AODFragment$1;-><init>(Lcom/miui/aod/settings/AODFragment;)V

    iput-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mOnTimeSetListener:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/settings/AODFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/settings/AODFragment;->mTimeFlag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/aod/settings/AODFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    return p0
.end method

.method static synthetic access$102(Lcom/miui/aod/settings/AODFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/aod/settings/AODFragment;)Lmiui/preference/ValuePreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/settings/AODFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/aod/settings/AODFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    return p0
.end method

.method static synthetic access$402(Lcom/miui/aod/settings/AODFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/aod/settings/AODFragment;)Lmiui/preference/ValuePreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    return-object p0
.end method

.method private getSystemDefaultEnterAnim(Landroid/app/Activity;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x10100ae

    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :array_0
    .array-data 4
        0x10100b8
        0x10100b9
    .end array-data
.end method

.method private startAODStyleCategoryActivity()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/aod/widget/AODSettings;->AOD_MODE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/aod/widget/AODSettings;->isDualClock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/aod/settings/AODStyleActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "category"

    const-string v3, "dual_clock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dual_clock"

    const-string v4, "{}"

    invoke-static {v2, v3, v4}, Lcom/miui/aod/util/CategoryPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "param"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/miui/aod/settings/AODFragment;->getSystemDefaultEnterAnim(Landroid/app/Activity;)Landroid/util/Pair;

    move-result-object p0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method private updateExtraInfoState(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mStylePref:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "aod_show_style"

    iget-object v3, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/aod/Utils;->getShowStyle(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->getClockStyleInfo(Landroid/content/Context;)Lcom/miui/aod/common/StyleInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->supportNotificationIcon()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->supportBatteryIcon()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "need_reset_aod_time"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "aod_mode_time"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "need_reset_aod_time"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mStylePref:Landroid/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateShowStyle(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->updateTouchMode(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/aod/Utils;->getShowStyle(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->translateShowStyleValue2Index(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, p1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mSummaryText:Landroid/view/View;

    if-nez v0, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    const v0, 0x7f030032

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f030033

    invoke-virtual {p1, v1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mSummaryText:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mSummaryText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/high16 p1, 0x7f070000

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->addPreferencesFromResource(I)V

    const-string p1, "aod_mode_enable"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "aod_mode_start_time"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiui/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "aod_mode_end_time"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiui/preference/ValuePreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    invoke-virtual {p1, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "aod_preview"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/settings/AODPreviewPreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    invoke-virtual {p1, p0}, Lcom/miui/aod/settings/AODPreviewPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "aod_mode_style"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mStylePref:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mStylePref:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "aod_show_style"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "aod_show"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mAodShowPref:Landroid/preference/PreferenceCategory;

    const-string p1, "aod_notification"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "aod_battery"

    invoke-virtual {p0, p1}, Lcom/miui/aod/settings/AODFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    new-instance p1, Lmiui/app/TimePickerDialog;

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment;->mOnTimeSetListener:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    iget v0, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    div-int/lit8 v3, v0, 0x3c

    iget v0, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    rem-int/lit8 v4, v0, 0x3c

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/aod/Utils;->isAodEnable(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/widget/AODSettings;->getShowStyleEntries(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/widget/AODSettings;->getShowStyleValues(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mStylePref:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/Utils;->isNotificationEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/aod/Utils;->isBatteryEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_start"

    const/16 v2, 0x1a4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_end"

    const/16 v2, 0x564

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mAodStartPref:Lmiui/preference/ValuePreference;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    iget v4, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mAodEndPref:Lmiui/preference/ValuePreference;

    const-string v1, "%02d:%02d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    iget p3, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    rem-int/lit8 p3, p3, 0x3c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODFragment;->updateShowStyle(Z)V

    return-object p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    new-instance p1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f090022

    invoke-virtual {p1, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    const p2, 0x7f090032

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const p2, 0x7f09002e

    new-instance v0, Lcom/miui/aod/settings/AODFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AODFragment$2;-><init>(Lcom/miui/aod/settings/AODFragment;)V

    invoke-virtual {p1, p2, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/aod/widget/AODSettings;->AOD_MODE:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->supportShowExtraInfo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/miui/aod/settings/AODFragment;->updateExtraInfoState(Z)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODFragment;->updateShowStyle(Z)V

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/aod/Utils;->updateTouchMode(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/miui/aod/settings/AODFragment;->mShowStylePref:Landroid/preference/ListPreference;

    invoke-static {p1}, Lcom/miui/aod/widget/AODSettings;->translateShowStyleValue2Index(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "need_reset_aod_time"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "aod_show_style"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/miui/aod/settings/AODFragment;->updateShowStyle(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_notification"

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODNotificationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODPreviewPreference;->refreshView()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_battery"

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODBatteryPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODPreviewPreference;->refreshView()V

    :cond_7
    :goto_2
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aod_mode_start_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/aod/settings/AODFragment;->mTimeFlag:Z

    iget p1, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    iget v0, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    div-int/lit8 v0, v0, 0x3c

    iget v2, p0, Lcom/miui/aod/settings/AODFragment;->mStartTime:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {p1, v0, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p1, v2, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    :goto_0
    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_3

    :cond_1
    const-string v0, "aod_mode_end_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/miui/aod/settings/AODFragment;->mTimeFlag:Z

    iget p1, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    iget v0, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    div-int/lit8 v0, v0, 0x3c

    iget v2, p0, Lcom/miui/aod/settings/AODFragment;->mEndTime:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {p1, v0, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p1, v2, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    :goto_1
    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mTimePickerDialog:Lmiui/app/TimePickerDialog;

    invoke-virtual {p0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_3

    :cond_3
    const-string v0, "aod_mode_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "aod_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/miui/aod/settings/AODFragment;->startAODStyleCategoryActivity()V

    :goto_3
    return v1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    invoke-virtual {v0}, Lcom/miui/aod/settings/AODPreviewPreference;->refreshView()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mEnableAODPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/aod/settings/AODFragment;->updateExtraInfoState(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    instance-of v0, v0, Lcom/miui/aod/settings/AODPreviewPreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment;->mPreviewPref:Lcom/miui/aod/settings/AODPreviewPreference;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODPreviewPreference;->onStop()V

    :cond_0
    return-void
.end method
