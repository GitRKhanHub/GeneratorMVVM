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

        public int Period
        {
            get => _period;
            set
            {
                _period = value;
                GeneratorVMs[0].Period = _period;
                GeneratorVMs[1].Period = _period;
                GeneratorVMs[2].Period = _period;
                OnPropertyChanged("Period");
            }
        }

        readonly ObservableCollection<GeneratorVM> _generatorVMs = new ObservableCollection<GeneratorVM>
        {
            new GeneratorVM(), new GeneratorVM{}, new GeneratorVM{}
        };
        public ObservableCollection<GeneratorVM> GeneratorVMs
        {
            get { return _generatorVMs; }
            set { ; }
        }


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
