using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;

namespace NumberGeneratorMVVM
{
    public class MainWindowVM: INotifyPropertyChanged
    {
        private static int _period;

        public static int Period
        {
            get => _period;
            set
            {
                _period = value;
                //OnPropertyChanged("Period");
            }
        }

        readonly ObservableCollection<GeneratorVM> _generatorVMs = new ObservableCollection<GeneratorVM>
        {
            new GeneratorVM(), new GeneratorVM{}, new GeneratorVM{}
        };
        public ObservableCollection<GeneratorVM> GeneratorVMs => _generatorVMs;


        public event PropertyChangedEventHandler PropertyChanged;

        public MainWindowVM()
        {
            Period = 100;
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
