# MudraLingua (मुद्रा लिंगुआ)

MudraLingua is a Flutter 3.24+ cross-platform app (Android, iOS, Web) for learning and translating Indian Sign Language (ISL) with on-device AI.

## Core Product Pillars

1. **Translate Mode**
   - Real-time camera recognition for ISL letters (A-Z), numbers (0-9), and common vocabulary.
   - On-device ML inference pipeline: MediaPipe landmark extraction + TFLite classification.
   - Translation output in English + Hindi (Hinglish-compatible display).

2. **Teach Mode (Duolingo-style)**
   - Unit skill tree: Alphabet, Numbers, Greetings, Family, Food, Emotions, Sentences.
   - Lesson formats: Watch, Practice, Match, Type, and Sign-the-sentence.
   - Gamification: streaks, XP, hearts, gems, Mudras, leagues, and badges.

3. **Accessibility & Inclusion**
   - Light/dark themes, larger text scaling, and assistive-reader friendly semantics.
   - Respectful language and culturally Indian UI tone with saffron + teal palette.
   - Offline-first delivery with local model assets and SQLite-backed SRS progress.

## App Architecture

- `lib/main.dart` — app bootstrap with Riverpod.
- `lib/app/` — router + top-level app config.
- `lib/features/` — feature-first slices:
  - `onboarding`, `home`, `learn`, `translate`, `practice`, `profile`, `gamification`.
- `lib/core/` — shared services/theme/localization.
- `lib/data/` — models + repositories for SRS and translation history.
- `notebooks/` + `scripts/` — model training and TFLite conversion pipeline.

## ISL Vocabulary Seed (50+)

Hello, Thank you, I love you, Name, Water, Food, Help, Yes, No, Please, Sorry, Good morning, Good night, Mother, Father, Sister, Brother, Friend, Teacher, Student, Home, School, Hospital, Doctor, Police, Stop, Come, Go, Sit, Stand, Eat, Drink, Book, Pen, Money, Phone, Work, Play, Happy, Sad, Angry, Question, Where, When, Why, Who, What, How, Today, Tomorrow, Yesterday, India, Delhi, Train, Bus, Emergency, Fine.

## Firebase Services Used

- Firebase Auth for user identity
- Firestore for progress, quests, league boards
- Storage for signer media and community submissions
- Analytics + Crashlytics for product quality
- FCM for streak reminders and motivational nudges

## Computer Vision Stack

- **MediaPipe Hands (0.10+)** for 21 landmark detection.
- **TensorFlow Lite** sequence model for per-sign classification.
- Optional ML Kit hand detection to pre-screen frames.
- Inference runs **fully on-device**.

## Training Pipeline

Datasets (Kaggle):
- https://www.kaggle.com/datasets/soumyakushwaha/indian-sign-language-dataset
- https://www.kaggle.com/datasets/arvindvinod/indian-sign-language-dataset-part-1
- https://www.kaggle.com/datasets/drblack00/isl-csltr-indian-sign-language-dataset

See:
- `notebooks/train_isl_landmarks.ipynb`
- `scripts/convert_to_tflite.py`

## Run (after installing Flutter + Firebase CLI)

```bash
flutter pub get
flutter run
```

## Ethical Notes

- Avoid terms such as “dumb” or “mute”.
- Include diverse Indian signers across region, skin tone, and gender.
- Capture explicit consent for community-contributed sign videos.
